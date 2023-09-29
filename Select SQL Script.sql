CREATE TABLE Artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(255)
);

CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255)
);

CREATE TABLE ArtistGenres (
    artist_id INT,
    genre_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(255),
    release_year INT
);

CREATE TABLE ArtistAlbums (
    artist_id INT,
    album_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE Tracks (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(255),
    duration TIME,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE Compilations (
    compilation_id SERIAL PRIMARY KEY,
    compilation_name VARCHAR(255),
    release_year INT
);

CREATE TABLE CompilationTracks (
    compilation_id INT,
    track_id INT,
    FOREIGN KEY (compilation_id) REFERENCES Compilations(compilation_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);
