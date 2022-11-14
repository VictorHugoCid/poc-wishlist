
CREATE TABLE "users" (
	"id" serial PRIMARY KEY,
	"name" TEXT NOT NULL,
	"email" TEXT NOT NULL UNIQUE,
	"password" TEXT NOT NULL,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sessions" (
	"id" serial PRIMARY KEY,
	"token" TEXT NOT NULL UNIQUE,
	"isValid" BOOLEAN NOT NULL,
	"userId" INTEGER NOT NULL,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "films" (
	"id" serial PRIMARY KEY,
	"title" text NOT NULL,
	"pĺatform" text NOT NULL,
	"type" text NOT NULL,
	"userId" integer NOT NULL,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "usersFilms" (
	"id" serial PRIMARY KEY,
	"userId" INTEGER NOT NULL,
	"filmId" INTEGER NOT NULL,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "platform" (
	"id" serial PRIMARY KEY,
	"platform" TEXT NOT NULL UNIQUE,
	"filmId" INTEGER NOT NULL,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "type" (
	"id" serial PRIMARY KEY,
	"type" TEXT NOT NULL UNIQUE,
	"filmId" INTEGER NOT NULL,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);



DROP TABLE users;

DROP TABLE sessions;

DROP TABLE posts;

DROP TABLE likes;

DROP TABLE hashtags;

DROP TABLE "hashPost";

DROP TABLE "comments";

DROP TABLE "repost";

DROP TABLE "follow";


