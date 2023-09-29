-- RETRIEVING VIP TICKET HOLDERS
-- Issue: There may be a need to identify VIP ticket holders for various reasons.
-- Query: SQL query to retrieve information about ticket holders with VIP tickets.
SELECT th.full_name, t.type
FROM ticket_holder th
JOIN ticket t ON th.ticket_holder_id = t.ticket_id
WHERE t.type = 'VIP';


-- TICKET PRICE DISCREPANCIES
-- Issue: There may be discrepancies in ticket prices for the same type of ticket.
-- Query: Identify tickets with inconsistent prices (assuming more than 1 price indicates a discrepancy).
SELECT type, COUNT(*) as count
FROM ticket
GROUP BY type
HAVING COUNT(DISTINCT price) > 1;


-- TICKET REFUNDS AND CANCELLATIONS
-- Issue: There may be a need to track ticket refunds and cancellations for various reasons.
-- Query: Retrieve a list of ticket refunds and cancellations (assuming quantity 0 indicates a refund or cancellation).
SELECT t.ticket_id, t.quantity_available
FROM ticket t
WHERE t.quantity_available = 0;


-- LOW TICKET SALES FOR CERTAIN GAMES
-- Issue: Some games may have lower ticket sales compared to others.
-- Query: Retrieve a list of games with low ticket sales (Assuming 0 indicates low ticket sales).
SELECT g.name, t.quantity_available
FROM game g
LEFT JOIN ticket t ON g.game_id = t.game_id
WHERE t.quantity_available = 0;


-- TRAIN SEAT AVAILABILITY
-- Issue: Ensuring there are enough available seats on trains for attendees.
-- Query: Check available seats on a specific train for a game
SELECT t.name AS train_name, t.number_of_seats AS total_seats,
       COUNT(tr.transaction_id) AS booked_seats,
       t.number_of_seats - COUNT(tr.transaction_id) AS available_seats
FROM train t
LEFT JOIN [transaction] tr ON t.train_id = tr.train_id
GROUP BY t.name, t.number_of_seats;


-- FAN CAMP ROOM AVAILABILITY
-- Issue: Managing room availability in the fan camp, especially during peak times.
-- Query: Check available fan camp rooms of a specific type (assuming 'Family Room' is the room type of interest)
SELECT type, room_available
FROM fan_camp_room
WHERE type = 'Family Room'; 


-- TICKET HOLDER INFORMATION
-- Issue: Keeping track of ticket holder information and their associated purchases.
-- Query: Retrieve ticket holder details and their associated purchases.
SELECT th.full_name, th.email, th.phone_number, t.type, fcr.type AS room_type, tr.name AS train_name
FROM ticket_holder th
JOIN [transaction] trn ON th.ticket_holder_id = trn.ticket_holder_id
JOIN ticket t ON trn.ticket_id = t.ticket_id
LEFT JOIN fan_camp_room fcr ON trn.fan_camp_room_id = fcr.fan_camp_room_id
LEFT JOIN train tr ON trn.train_id = tr.train_id;


-- PRICING AND REVENUE ANALYSIS
-- Issue: Analyzing ticket pricing and revenue generated from ticket sales.
-- Query: Calculate total revenue for a specific game (assuming game_id 4 is the game of interest)
SELECT
    g.name AS game_name,
    t.type AS ticket_type,
    t.price AS ticket_price,
    COUNT(trn.transaction_id) AS tickets_sold,
    SUM(t.price) AS total_revenue
FROM game g
LEFT JOIN ticket t ON g.game_id = t.game_id
LEFT JOIN [transaction] trn ON t.ticket_id = trn.ticket_id
GROUP BY g.name, t.type, t.price
ORDER BY g.name, t.type;