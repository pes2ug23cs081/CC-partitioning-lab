-- Create a keyspace for our distributed data
CREATE KEYSPACE lab_hashing WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE lab_hashing;

-- Partitioning by Hash of Key (sensor_id)
-- This ensures even distribution across the cluster
CREATE TABLE sensor_hashes (
    sensor_id UUID PRIMARY KEY,
    location TEXT,
    data_value FLOAT
);