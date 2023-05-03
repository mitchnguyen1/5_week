-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM invoice i
JOIN invoice_line l
ON i.invoice_id = l.invoice_id
WHERE l.unit_price > 0.99

-- Get all playlist tracks where the playlist name is Music.
SELECT * FROM playlist p
JOIN playlist_track t
ON p.playlist_id = t.playlist_id
WHERE p.name = 'Music'

-- Get all track names for playlist_id 5.
SELECT name FROM track t
JOIN playlist_track p
ON t.track_id = p.track_id
WHERE p.playlist_id = 5 

-- Get all tracks where the genre is Comedy.
SELECT * FROM track
WHERE genre_id IN (
  SELECT genre_id FROM genre WHERE name = 'Comedy'
);
-- Get all tracks where the album is Fireball.
SELECT * 
FROM track
WHERE album_id IN (
  SELECT album_id FROM album WHERE title = 'Fireball'
);

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
SELECT * FROM track
WHERE album_id IN (
  SELECT album_id FROM album 
  WHERE artist_id IN (
    SELECT artist_id FROM artist
    WHERE name = 'Queen'
  )
);