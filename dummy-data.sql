INSERT INTO game (name, start_time, venue)
VALUES
    ('Group Stage - Match 3', '2022-11-24 16:00:00', 'Khalifa International Stadium'),
    ('Group Stage - Match 4', '2022-11-25 15:00:00', 'Al Rayyan Stadium'),
    ('Group Stage - Match 5', '2022-11-26 17:30:00', 'Al Thumama Stadium'),
    ('Round of 16 - Match 1', '2022-11-28 14:30:00', 'Al Bayt Stadium'),
    ('Round of 16 - Match 2', '2022-11-29 15:00:00', 'Al Janoub Stadium'),
    ('Quarterfinal - Match 1', '2022-12-05 16:00:00', 'Education City Stadium'),
    ('Semifinal - Match 1', '2022-12-12 18:30:00', 'Lusail Iconic Stadium');

INSERT INTO ticket (game_id, type, quantity_available, price)
VALUES
    (3, 'VIP', 30, 450.00),
    (3, 'Standard', 150, 200.00),
    (4, 'VIP', 20, 500.00),
    (4, 'Standard', 100, 250.00),
    (5, 'VIP', 40, 400.00),
    (5, 'Standard', 200, 180.00),
    (6, 'VIP', 15, 600.00),
    (6, 'Standard', 80, 300.00),
    (7, 'VIP', 25, 700.00);

INSERT INTO ticket_holder (full_name, email, phone_number)
VALUES
    ('Michael Johnson', 'michael@example.com', '+1122334455'),
    ('Sara White', 'sara@example.com', '+9988776655'),
    ('Kevin Anderson', 'kevin@example.com', '+1234509876'),
    ('Laura Smith', 'laura@example.com', '+9876543210'),
    ('Daniel Brown', 'daniel@example.com', '+2345678901'),
    ('Sophia Davis', 'sophia@example.com', '+3456789012'),
    ('Ethan Lee', 'ethan@example.com', '+4567890123'),
    ('Olivia Taylor', 'olivia@example.com', '+5678901234'),
    ('Aiden Harris', 'aiden@example.com', '+6789012345'),
    ('Mia Jackson', 'mia@example.com', '+7890123456'),
    ('Liam Wilson', 'liam@example.com', '+8901234567'),
    ('Emma Martinez', 'emma@example.com', '+9012345678'),
    ('Noah Smith', 'noah@example.com', '+0123456789'),
    ('Oliver Lee', 'oliver@example.com', '+0987654321'),
    ('Ava Johnson', 'ava@example.com', '+9876543210'),
    ('James Brown', 'james@example.com', '+8765432109'),
    ('John Doe', 'john@example.com', '+1234567890'),
    ('Jane Smith', 'jane@example.com', '+9876543210'),
    ('Robert Johnson', 'robert@example.com', '+4567890123'),
    ('Emily Davis', 'emily@example.com', '+7890123456'),
    ('William Wilson', 'william@example.com', '+2345678901'),
    ('Sophia Brown', 'sophia@example.com', '+8901234567'),
    ('Ella Martinez', 'ella@example.com', '+3456789012'),
    ('Ethan Lee', 'ethan@example.com', '+6789012345'),
    ('Olivia Taylor', 'olivia@example.com', '+2345678901'),
    ('Michael Johnson', 'michael@example.com', '+1234509876'),
    ('Ava Jackson', 'ava@example.com', '+9012345678'),
    ('Noah Smith', 'noah@example.com', '+5678901234'),
    ('Oliver Lee', 'oliver@example.com', '+4567890123'),
    ('Sophia Davis', 'sophia@example.com', '+0123456789'),
    ('Liam Wilson', 'liam@example.com', '+7890123456'),
    ('Mia Jackson', 'mia@example.com', '+2345678901'),
    ('Ella Smith', 'ella@example.com', '+6789012345'),
    ('Ethan Martinez', 'ethan@example.com', '+3456789012'),
    ('Aiden Harris', 'aiden@example.com', '+1234509876'),
    ('Emma Davis', 'emma@example.com', '+0987654321'),
    ('Ava Johnson', 'ava@example.com', '+0123456789');

INSERT INTO train (name, departure_time, departure_location, arrival_time, arrival_location, number_of_seats)
VALUES
    ('Train 21', '2022-12-01 08:00:00', 'Doha Central Station', '2022-12-01 10:30:00', 'Al Bayt Stadium Station', 200),
    ('Train 22', '2022-12-03 09:00:00', 'Doha Central Station', '2022-12-03 11:30:00', 'Al Janoub Stadium Station', 150),
    ('Train 23', '2022-12-06 10:00:00', 'Doha Central Station', '2022-12-06 12:30:00', 'Education City Stadium Station', 200),
    ('Train 24', '2022-12-09 11:00:00', 'Doha Central Station', '2022-12-09 13:30:00', 'Lusail Iconic Stadium Station', 250),
    ('Train 25', '2022-12-16 12:00:00', 'Doha Central Station', '2022-12-16 14:30:00', 'Khalifa International Stadium Station', 150);

INSERT INTO fan_camp_room (type, room_available, price)
VALUES
    ('Single Room', 10, 150.00),
    ('Double Room', 20, 250.00),
    ('Family Room', 5, 350.00),
    ('VIP Suite', 3, 500.00),
    ('Single Room', 8, 150.00),
    ('Double Room', 15, 250.00),
    ('Family Room', 3, 350.00),
    ('VIP Suite', 2, 500.00),
    ('Single Room', 12, 150.00),
    ('Double Room', 22, 250.00),
    ('Family Room', 7, 350.00),
    ('VIP Suite', 5, 500.00);

INSERT INTO [transaction] (ticket_holder_id, ticket_id, fan_camp_room_id, train_id, method, total_price, transaction_date)
VALUES
    (1, 1, 1, 1, 'Credit Card', 500.00, '2022-11-22 10:30:00'),
    (2, 2, 2, 2, 'PayPal', 400.00, '2022-11-23 11:45:00'),
    (3, 3, 3, 3, 'Credit Card', 550.00, '2022-11-25 14:15:00'),
    (4, 4, 4, 4, 'Credit Card', 250.00, '2022-11-29 17:00:00'),
    (5, 1, 5, 5, 'PayPal', 400.00, '2022-12-05 09:30:00'),
    (6, 2, 6, 1, 'Credit Card', 600.00, '2022-12-10 16:45:00'),
    (7, 3, 7, 2, 'Credit Card', 700.00, '2022-12-12 22:15:00'),
    (8, 4, 8, 3, 'PayPal', 200.00, '2022-12-15 13:30:00'),
    (9, 9, 9, 4, 'Credit Card', 250.00, '2022-12-18 08:45:00'),
    (10, 1, 10, 5, 'PayPal', 300.00, '2022-12-20 09:00:00'),
    (11, 2, 11, 1, 'Credit Card', 450.00, '2022-12-22 14:30:00'),
    (12, 3, 12, 2, 'Credit Card', 350.00, '2022-12-24 10:15:00'),
    (13, 4, 1, 3, 'PayPal', 275.00, '2022-12-26 11:00:00'),  
    (14, 5, 2, 4, 'Credit Card', 225.00, '2022-12-28 17:45:00'), 
    (15, 6, 3, 5, 'PayPal', 350.00, '2022-12-30 08:30:00'),  
    (16, 7, 4, 1, 'Credit Card', 500.00, '2023-01-02 16:15:00'),  
    (17, 8, 5, 2, 'Credit Card', 275.00, '2023-01-04 14:00:00'),  
    (18, 9, 6, 3, 'PayPal', 325.00, '2023-01-06 11:30:00'),  
    (19, 1, 7, 4, 'Credit Card', 375.00, '2023-01-08 09:45:00'),  
    (20, 2, 8, 5, 'PayPal', 425.00, '2023-01-10 17:00:00'),  
    (21, 4, 9, 1, 'Credit Card', 475.00, '2023-01-12 15:30:00'),  
    (22, 3, 10, 2, 'Credit Card', 525.00, '2023-01-14 13:15:00'),  
    (23, 5, 11, 3, 'PayPal', 575.00, '2023-01-16 10:45:00'),  
    (24, 6, 12, 4, 'Credit Card', 625.00, '2023-01-18 08:00:00'),  
    (25, 7, 1, 5, 'PayPal', 675.00, '2023-01-20 16:30:00'),  
    (26, 8, 2, 1, 'Credit Card', 725.00, '2023-01-22 14:15:00'), 
    (27, 9, 3, 2, 'Credit Card', 775.00, '2023-01-24 12:30:00'), 
    (28, 8, 4, 3, 'PayPal', 825.00, '2023-01-26 10:00:00'), 
    (29, 1, 5, 4, 'Credit Card', 875.00, '2023-01-28 08:15:00'),  
    (30, 2, 6, 5, 'PayPal', 925.00, '2023-01-30 16:45:00'),  
    (31, 9, 7, 1, 'Credit Card', 975.00, '2023-02-01 14:00:00'),  
    (32, 2, 8, 2, 'Credit Card', 325.00, '2023-02-03 12:30:00'),  
    (33, 3, 9, 3, 'PayPal', 275.00, '2023-02-05 10:45:00'),  
    (34, 4, 10, 4, 'Credit Card', 225.00, '2023-02-07 17:00:00'),  
    (35, 5, 11, 5, 'PayPal', 350.00, '2023-02-09 08:30:00'),  
    (36, 6, 12, 1, 'Credit Card', 500.00, '2023-02-11 16:15:00'),  
    (37, 7, 1, 2, 'Credit Card', 275.00, '2023-02-13 14:00:00');