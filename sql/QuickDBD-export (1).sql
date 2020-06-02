-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Movies" (
    "Movie_ID" Integer   NOT NULL,
    "Original_Title" VARCHAR(200)   NOT NULL,
    "Revenue" Float   NOT NULL,
    "Vote_Average" Float   NOT NULL,
    "Vote_count" Float   NOT NULL,
    "Budget" Integer   NOT NULL,
    "Title" VARCHAR(200)   NOT NULL,
    "Status" VARCHAR(200)   NOT NULL,
    "Release_date" DATE   NOT NULL,
    CONSTRAINT "pk_Movies" PRIMARY KEY (
        "Movie_ID"
     )
);

CREATE TABLE "Ratings" (
    "User_id" Integer   NOT NULL,
    "Movie_ID" Integer   NOT NULL,
    "Rating" Ineteger   NOT NULL,
    "Timestamp" VARCHAR(200)   NOT NULL,
    CONSTRAINT "pk_Ratings" PRIMARY KEY (
        "User_id","Movie_ID"
     )
);

CREATE TABLE "MovieGenres" (
    "Genres_ID" Integer   NOT NULL,
    "Movie_ID" INTEGER   NOT NULL,
    CONSTRAINT "pk_MovieGenres" PRIMARY KEY (
        "Genres_ID","Movie_ID"
     )
);

CREATE TABLE "MovieProductionCompanies" (
    "ProductionCompanyID" INTEGER   NOT NULL,
    "Movie_ID" Integer   NOT NULL,
    CONSTRAINT "pk_MovieProductionCompanies" PRIMARY KEY (
        "ProductionCompanyID","Movie_ID"
     )
);

CREATE TABLE "ProductionCompanies" (
    "ProductionCompanyID" INTEGER   NOT NULL,
    "ProductionCompanyName" VARCHAR(200   NOT NULL,
    CONSTRAINT "pk_ProductionCompanies" PRIMARY KEY (
        "ProductionCompanyID"
     )
);

CREATE TABLE "Genres" (
    "Genre_ID" Integer   NOT NULL,
    "Genre_Name" VARCHAR(200)   NOT NULL,
    CONSTRAINT "pk_Genres" PRIMARY KEY (
        "Genre_ID"
     )
);

CREATE TABLE "Amazon_movie" (
    "Movie_ID" INTEGER   NOT NULL,
    "Amazon_Title" VARCHAR(500)   NOT NULL,
    "Rating" VARCHAR(500)   NOT NULL,
    "Amazon_Link" VARCHAR(500)   NOT NULL,
    CONSTRAINT "pk_Amazon_movie" PRIMARY KEY (
        "Movie_ID"
     )
);

ALTER TABLE "Ratings" ADD CONSTRAINT "fk_Ratings_Movie_ID" FOREIGN KEY("Movie_ID")
REFERENCES "Movies" ("Movie_ID");

ALTER TABLE "MovieGenres" ADD CONSTRAINT "fk_MovieGenres_Movie_ID" FOREIGN KEY("Movie_ID")
REFERENCES "Movies" ("Movie_ID");

ALTER TABLE "MovieProductionCompanies" ADD CONSTRAINT "fk_MovieProductionCompanies_Movie_ID" FOREIGN KEY("Movie_ID")
REFERENCES "Movies" ("Movie_ID");

ALTER TABLE "ProductionCompanies" ADD CONSTRAINT "fk_ProductionCompanies_ProductionCompanyID" FOREIGN KEY("ProductionCompanyID")
REFERENCES "MovieProductionCompanies" ("ProductionCompanyID");

ALTER TABLE "Genres" ADD CONSTRAINT "fk_Genres_Genre_ID" FOREIGN KEY("Genre_ID")
REFERENCES "MovieGenres" ("Genres_ID");

ALTER TABLE "Amazon_movie" ADD CONSTRAINT "fk_Amazon_movie_Movie_ID" FOREIGN KEY("Movie_ID")
REFERENCES "Movies" ("Movie_ID");

