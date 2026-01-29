# MITTPP Projekt

U ovom projektu testiram svoju qw_parse biblioteku za parsiranje brojeva.
Jedini tip (tj. razina) testiranja korišten je unit testing, i svi se testovi
nalaze u izvornoj datoteci (src/num-parse.zig) u liniji 196 i ispod. Za pisanje
i izvršavanje testova se koriste zig-ove ugrađene mogućnosti za to (ključna
riječ test za pisanje te addTest i addRunArtifact u build skripti za
pokretanje). Testovi se pokreću s `zig build test`.

Zbog jednostavnosti biblioteke AAA nije korišten već je sve napisano u jednoj
liniji s expect funkcijom. Testovi su uglavnom grupirani po featureu kojeg
testiraju.

Testiraju se podržani (npr. "Leading zeros", "Basic suffix functionality") i
nepodržani featurei (npr. "Multiple signs", "Underscores not supported").

Od tipova testiranja koje smo prošli na predavanjima jedina koja se znatno
koristi je boundary value testing, u testovima "Parsing zero", "Parsing limits",
"Ten is greater than max(T)", "Base and exponent less then max(T), but their
multiple is over", "E-suffix overflow", i vjerojatno nekim drugima koji su mi
promakli dok ovo pišem. Vjerujem da su sve grane također pokrivene, ali nisam
njihovu pokrvenost detaljno pratio tokom pisanja testova pa ne mogu reći za
sigurno.
