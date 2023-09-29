INSERT INTO game (name, venue, start_time)
VALUES
    ('Opening Ceremony', 'Qatar Stadium', '2023-11-20 16:00:00'),
    ('Group Stage Match 1', 'Qatar Stadium', '2023-11-21 19:00:00'),
    ('Group Stage Match 2', 'Qatar Stadium', '2023-11-22 20:00:00'),
    ('Group Stage Match 3', 'Qatar Stadium', '2023-11-23 18:30:00'),
    ('Group Stage Match 4', 'Qatar Stadium', '2023-11-24 19:30:00'),
    ('Group Stage Match 5', 'Qatar Stadium', '2023-11-25 20:30:00'),
    ('Group Stage Match 6', 'Qatar Stadium', '2023-11-26 18:00:00'),
    ('Group Stage Match 7', 'Qatar Stadium', '2023-11-27 19:00:00'),
    ('Group Stage Match 8', 'Qatar Stadium', '2023-11-28 20:00:00'),
    ('Closing Ceremony', 'Qatar Stadium', '2023-11-29 22:00:00');

INSERT INTO fan_camp_room (room_type, price_per_night, room_available)
VALUES
    ('Standard Single', 150.00, 10),
    ('Standard Double', 200.00, 15),
    ('VIP Single', 300.00, 5),
    ('VIP Double', 400.00, 8),
    ('Economy Single', 100.00, 20),
    ('Economy Double', 150.00, 25),
    ('Luxury Suite', 500.00, 3),
    ('Family Suite', 450.00, 4),
    ('Presidential Suite', 1000.00, 2),
    ('Tent', 50.00, 30);

INSERT INTO ticket (game_id, ticket_type, price, quantity_available)
VALUES
    (1, 'VIP', 500.00, 50),
    (1, 'Standard', 300.00, 100),
    (2, 'Standard', 200.00, 150),
    (3, 'VIP', 500.00, 60),
    (4, 'Standard', 300.00, 120),
    (5, 'VIP', 500.00, 70),
    (6, 'Standard', 200.00, 160),
    (7, 'VIP', 500.00, 80),
    (8, 'Standard', 300.00, 130),
    (9, 'VIP', 500.00, 90);

INSERT INTO ticket_holder (ticket_id, room_id, first_name, last_name, email, phone_number)
VALUES
    (1, 1, 'John', 'Doe', 'john.doe@example.com', '+1-123-456-7890'),
    (2, 2, 'Jane', 'Smith', 'jane.smith@example.com', '+1-234-567-8901'),
    (3, 3, 'Mike', 'Johnson', 'mike.johnson@example.com', '+1-345-678-9012'),
    (4, 4, 'Sarah', 'Williams', 'sarah.williams@example.com', '+1-456-789-0123'),
    (5, 5, 'David', 'Brown', 'david.brown@example.com', '+1-567-890-1234'),
    (6, 6, 'Emily', 'Davis', 'emily.davis@example.com', '+1-678-901-2345'),
    (7, 7, 'Chris', 'Miller', 'chris.miller@example.com', '+1-789-012-3456'),
    (8, 8, 'Lisa', 'Wilson', 'lisa.wilson@example.com', '+1-890-123-4567'),
    (9, 9, 'Tom', 'Anderson', 'tom.anderson@example.com', '+1-901-234-5678'),
    (10, 10, 'Olivia', 'Martinez', 'olivia.martinez@example.com', '+1-012-345-6789');

INSERT INTO purchase (ticket_holder_id, quantity, total_price, purchase_date)
VALUES
    (1, 2, 1000.00, '2023-09-10 08:15:00'),
    (2, 3, 600.00, '2023-09-15 10:30:00'),
    (3, 2, 1000.00, '2023-09-18 14:45:00'),
    (4, 1, 300.00, '2023-09-20 16:30:00'),
    (5, 4, 2000.00, '2023-09-22 11:00:00'),
    (6, 2, 400.00, '2023-09-25 09:45:00'),
    (7, 3, 1500.00, '2023-09-27 17:30:00'),
    (8, 2, 600.00, '2023-09-29 12:15:00'),
    (9, 3, 1500.00, '2023-09-30 08:45:00'),
    (10, 1, 500.00, '2023-10-02 19:00:00');

INSERT INTO train (game_id, train_name, departure_location, departure_time, arrival_location, arrival_time, number_of_seats)
VALUES
    (1, 'Express Train A', 'City Center Station', '2023-11-20 14:00:00', 'Stadium Station', '2023-11-20 15:30:00', 200),
    (2, 'Local Train B', 'Suburb Station', '2023-11-21 16:30:00', 'Stadium Station', '2023-11-21 17:15:00', 150),
    (3, 'Express Train C', 'City Center Station', '2023-11-22 12:00:00', 'Stadium Station', '2023-11-22 13:30:00', 220),
    (4, 'Local Train D', 'Suburb Station', '2023-11-23 18:00:00', 'Stadium Station', '2023-11-23 18:45:00', 160),
    (5, 'Express Train E', 'City Center Station', '2023-11-24 13:30:00', 'Stadium Station', '2023-11-24 15:00:00', 210),
    (6, 'Local Train F', 'Suburb Station', '2023-11-25 17:15:00', 'Stadium Station', '2023-11-25 18:00:00', 140),
    (7, 'Express Train G', 'City Center Station', '2023-11-26 11:45:00', 'Stadium Station', '2023-11-26 13:15:00', 230),
    (8, 'Local Train H', 'Suburb Station', '2023-11-27 19:30:00', 'Stadium Station', '2023-11-27 20:15:00', 170),
    (9, 'Express Train I', 'City Center Station', '2023-11-28 14:15:00', 'Stadium Station', '2023-11-28 15:45:00', 240),
    (10, 'Local Train J', 'Suburb Station', '2023-11-29 16:45:00', 'Stadium Station', '2023-11-29 17:30:00', 180);
