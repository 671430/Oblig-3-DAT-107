SET search_path TO oblig3;

-- LEGG TIL AVDELING OG PROSJEKT SEINARE, ROLLER OG TIMER
CREATE TABLE Ansatt (
	ansattid SERIAL PRIMARY KEY,
	brukernavn char(3) UNIQUE,
	Fornavn varchar(15),
	Etternavn varchar(25),
	ansettelsesdato DATE,
	stilling varchar(20),
	månedslønn decimal(8,2),
	avd_id INTEGER NOT NULL,
	prosjekt INTEGER,
	arbeidstimer INTEGER,
	CONSTRAINT Anvdeling_fk FOREIGN KEY (avd_id) REFERENCES Avdeling(avd_id),
	CONSTRAINT prosjekt_fk FOREIGN KEY (prosjekt) REFERENCES Prosjekt(prosjektid),
	CONSTRAINT arbeidstimer FOREIGN KEY (arbeidstimer) REFERENCES Prosjekt (arbeidstimer)
	
);

CREATE TABLE Avdeling(
	avd_id SERIAL PRIMARY KEY,
	navn varchar(30),
	sjef_id INTEGER NOT NULL,
	CONSTRAINT sjef_fk FOREIGN KEY (sjef_id) REFERENCES Ansatt(ansattid)
);

CREATE TABLE Prosjekt(

);

