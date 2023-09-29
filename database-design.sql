-- Create a database for Qatar 2022 World Cup ticket-selling system
CREATE DATABASE Qatar2022WorldCup;

-- Use the database
USE Qatar2022WorldCup;

-- Create the 'train' table
CREATE TABLE train (
    train_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    game_id INT NOT NULL,
    train_name VARCHAR(255) NOT NULL,
    departure_location VARCHAR(255) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_location VARCHAR(255) NOT NULL,
    arrival_time DATETIME NOT NULL,
    number_of_seats INT NOT NULL
);

-- Create the 'game' table
CREATE TABLE game (
    game_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    venue VARCHAR(255) NOT NULL,
    start_time DATETIME NOT NULL
);

-- Create the 'fan_camp_room' table
CREATE TABLE fan_camp_room (
    room_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    room_type VARCHAR(255) NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    room_available INT NOT NULL
);

-- Create the 'ticket' table
CREATE TABLE ticket (
    ticket_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    game_id INT NOT NULL,
    ticket_type VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity_available INT NOT NULL
);

-- Create the 'ticket_holder' table
CREATE TABLE ticket_holder (
    ticket_holder_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ticket_id INT NOT NULL,
    room_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

-- Create the 'purchase' table
CREATE TABLE purchase (
    purchase_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ticket_holder_id INT NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    purchase_date DATETIME NOT NULL
);

-- Add foreign key constraints to reference the appropriate tables
ALTER TABLE train
ADD CONSTRAINT FK_train_game FOREIGN KEY (game_id) REFERENCES game(game_id);

ALTER TABLE ticket
ADD CONSTRAINT FK_ticket_game FOREIGN KEY (game_id) REFERENCES game(game_id);

ALTER TABLE ticket_holder
ADD CONSTRAINT FK_ticket_holder_ticket FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id);

ALTER TABLE ticket_holder
ADD CONSTRAINT FK_ticket_holder_room FOREIGN KEY (room_id) REFERENCES fan_camp_room(room_id);

ALTER TABLE purchase
ADD CONSTRAINT FK_purchase_ticket_holder FOREIGN KEY (ticket_holder_id) REFERENCES ticket_holder(ticket_holder_id);
