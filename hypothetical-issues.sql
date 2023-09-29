-- RETRIEVING VIP TICKET HOLDERS
-- Issue: There may be a need to identify VIP ticket holders for various reasons.
-- Query: SQL query to retrieve information about ticket holders with VIP tickets.
SELECT th.first_name, th.last_name, th.email, th.phone_number
FROM ticket_holder th
INNER JOIN ticket t ON th.ticket_id = t.ticket_id
WHERE t.ticket_type = 'VIP';


-- TICKET PRICE DISCREPANCIES
-- Issue: There may be discrepancies in ticket prices for the same type of ticket.
-- Query: Identify tickets with inconsistent prices.
SELECT ticket_type, COUNT(DISTINCT price) 
FROM ticket
GROUP BY ticket_type
HAVING COUNT(DISTINCT price) > 1; -- Assuming more than 1 price indicates a discrepancy


-- TICKET REFUNDS AND CANCELLATIONS
-- Issue: There may be a need to track ticket refunds and cancellations for various reasons.
-- Query: Retrieve a list of ticket refunds and cancellations.
SELECT th.first_name, th.last_name, t.ticket_type, p.purchase_date
FROM purchase p
INNER JOIN ticket_holder th ON p.ticket_holder_id = th.ticket_holder_id
INNER JOIN ticket t ON th.ticket_id = t.ticket_id
WHERE p.quantity = 0; -- Assuming quantity 0 indicates a refund or cancellation


-- LOW TICKET SALES FOR CERTAIN GAMES
-- Issue: Some games may have lower ticket sales compared to others.
-- Query: Retrieve a list of games with low ticket sales (where ticket sales = 0).
SELECT g.name AS game_name, COUNT(th.ticket_holder_id)
FROM game g
LEFT JOIN ticket t ON g.game_id = t.game_id
LEFT JOIN ticket_holder th ON t.ticket_id = th.ticket_id
GROUP BY g.name
HAVING COUNT(th.ticket_holder_id) = 0; -- Assuming 0 indicates low ticket sales


-- TRAIN SEAT AVAILABILITY
-- Issue: Ensuring there are enough available seats on trains for attendees.
-- Query: Check available seats on a specific train for a game.
SELECT train_name, number_of_seats - COALESCE(SUM(quantity), 0) AS available_seats
FROM train
LEFT JOIN purchase ON train.game_id = purchase.ticket_holder_id
WHERE train.game_id = 3 -- Assuming game_id 3 is the game of interest
GROUP BY train_name, number_of_seats;


-- FAN CAMP ROOM AVAILABILITY
-- Issue: Managing room availability in the fan camp, especially during peak times.
-- Query: Check available fan camp rooms of a specific type.
SELECT room_type, room_available
FROM fan_camp_room
WHERE room_type = 'Tent'; -- Assuming 'Tent' is the room type of interest


-- TICKET HOLDER INFORMATION
-- Issue: Keeping track of ticket holder information and their associated purchases.
-- Query: Retrieve ticket holder details and their associated purchases.
SELECT th.first_name, th.last_name, t.ticket_type, p.quantity, p.total_price
FROM ticket_holder th
INNER JOIN ticket t ON th.ticket_id = t.ticket_id
INNER JOIN purchase p ON th.ticket_holder_id = p.ticket_holder_id;


-- PRICING AND REVENUE ANALYSIS
-- Issue: Analyzing ticket pricing and revenue generated from ticket sales.
-- Query: Calculate total revenue for a specific game.
SELECT g.name AS game_name, SUM(p.total_price) AS total_revenue
FROM game g
INNER JOIN ticket t ON g.game_id = t.game_id
INNER JOIN ticket_holder th ON t.ticket_id = th.ticket_id
INNER JOIN purchase p ON th.ticket_holder_id = p.ticket_holder_id
WHERE g.game_id = 4 -- Assuming game_id 4 is the game of interest
GROUP BY g.name;


-- GAME ATTENDANCE ANALYSIS
-- Issue: Analyzing attendance numbers for each game.
-- Query: Calculate attendance for each game.
SELECT g.name AS game_name, COUNT(th.ticket_holder_id) AS attendance
FROM game g
LEFT JOIN ticket t ON g.game_id = t.game_id
LEFT JOIN ticket_holder th ON t.ticket_id = th.ticket_id
GROUP BY g.name;


-- FAN CAMP PRiORITY BOOKING
-- Issue: Ensuring that ticket holders receive priority when booking fan camp rooms.
-- Query: Check available fan camp rooms for ticket holders.
SELECT th.first_name, th.last_name, rc.room_type, rc.room_available
FROM fan_camp_room rc
LEFT JOIN ticket_holder th ON rc.room_id = th.room_id
WHERE th.ticket_id IS NULL OR th.ticket_id = 2;