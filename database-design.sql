-- Create a database for Qatar 2022 World Cup ticket-selling system
CREATE DATABASE Qatar2022WorldCup;

-- Use the database
USE Qatar2022WorldCup;

-- Create the game table
CREATE TABLE game (
    game_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    start_time DATETIME NOT NULL,
    venue VARCHAR(255) NOT NULL
);

-- Create the ticket table
CREATE TABLE ticket (
    ticket_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    game_id INT NOT NULL,
    type VARCHAR(255) NOT NULL,
    quantity_available INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Create the ticket_holder table
CREATE TABLE ticket_holder (
    ticket_holder_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

-- Create the train table
CREATE TABLE train (
    train_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    departure_time DATETIME NOT NULL,
    departure_location VARCHAR(255) NOT NULL,
    arrival_time DATETIME NOT NULL,
    arrival_location VARCHAR(255) NOT NULL,
    number_of_seats INT NOT NULL
);

-- Create the fan_camp_room table
CREATE TABLE fan_camp_room (
    fan_camp_room_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    type VARCHAR(255) NOT NULL,
    room_available INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Create the [transaction] table
-- Using [] for transaction because its a reserved keyword in SQL
CREATE TABLE [transaction] (
    transaction_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ticket_holder_id INT NOT NULL,
    ticket_id INT NOT NULL,
    fan_camp_room_id INT NOT NULL,
    train_id INT NOT NULL,
    method VARCHAR(50) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    transaction_date DATETIME NOT NULL
);

-- Add foreign key constraints to reference the appropriate tables
ALTER TABLE ticket
ADD CONSTRAINT FK_ticket_game FOREIGN KEY (game_id) REFERENCES game(game_id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_transaction_ticket_holder FOREIGN KEY (ticket_holder_id) REFERENCES ticket_holder(ticket_holder_id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_transaction_ticket FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_transaction_fan_camp_room FOREIGN KEY (fan_camp_room_id) REFERENCES fan_camp_room(fan_camp_room_id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_transaction_train FOREIGN KEY (train_id) REFERENCES train(train_id);
