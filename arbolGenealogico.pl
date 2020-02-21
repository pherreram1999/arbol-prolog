hombre(sostenes).
hombre(pedro).
hombre(alonso).
hombre(oscar).
hombre(axa).
hombre(pepe).
hombre(teodolo).
hombre(ricardo).
hombre(zahir).
hombre(arturo).
hombre(german).
hombre(salvador).
hombre(saul).
hombre(hugo).
hombre(carlos).
hombre(eduardo).
hombre(alfredo).
hombre(jesus).
hombre(amalio).
hombre(josue).
hombre(jairo).
hombre(arnulfo).
hombre(david).
hombre(prudencio).
hombre(othon).
hombre(mario).
hombre(paulino).
hombre(jorge).
hombre(moises).
hombre(beto).
hombre(artemio).
hombre(roberto).
hombre(hipolito).
hombre(miguel).
hombre(guillermo).
hombre(martin).

mujer(erika).
mujer(lorena).
mujer(rosa).
mujer(falia).
mujer(xochilt).
mujer(porfiria).
mujer(matilde).
mujer(josefina).
mujer(stefanie).
mujer(danae).
mujer(rebeca).
mujer(alberta).
mujer(leonor).
mujer(joaquina).
mujer(esperanza).
mujer(abelina).
mujer(anabel).
mujer(abel).
mujer(otilia).
mujer(elizabeth).
mujer(marcial).
mujer(brenda).
mujer(deni).
mujer(zuri).
mujer(leonides).
mujer(lucia).
mujer(olivia)
mujer(graciela).
mujer(raquel).
mujer(margarita).
mujer(glafira).
mujer(catalina).
mujer(izmari).
mujer(yanet).
mujer(gabriela).

% definimos los progenitores

progenitor(jesus,leonides).
progenitor(jesus,josefina).
progenitor(jesus,lucia).
progenitor(jesus,pepe).
progenitor(jesus,margarita).
progenitor(jesus,glafira).
progenitor(jesus,beto).
progenitor(jesus,artemio).

progenitor(matilde,leonides).
progenitor(matilde,josefina).
progenitor(matilde,lucia).
progenitor(matilde,pepe).
progenitor(matilde,margarita).
progenitor(matilde,glafira).
progenitor(matilde,beto).
progenitor(matilde,artemio).

progenitor(porfiria,alberta).
progenitor(porfiria,leonor).
progenitor(porfiria,pedro).
progenitor(sostenes,alberta).
progenitor(sostenes,leonor).
progenitor(sostenes,pedro).

progenitor(pedro,alonso).
progenitor(pedro,oscar).
progenitor(pedro,axa).
progenitor(pedro,xochilt).
progenitor(porfiria,pedro).
progenitor(matilde,josefina).
progenitor(josefina,alonso).
progenitor(josefina,oscar).
progenitor(josefina,axa).
progenitor(josefina,xochilt).

progenitor(alberta,carlos).
progenitor(alberta,hugo).
progenitor(alberta,eduardo).
progenitor(salvador,carlos).
progenitor(salvador,hugo).
progenitor(salvador,eduardo).

progenitor(oscar,danae).
progenitor(oscar,zahir).
progenitor(oscar,arturo).
progenitor(stefanie,danae).
progenitor(stefanie,zahir).
progenitor(stefanie,arturo).

progenitor(leonor,alfredo).
progenitor(leonor,brenda).
progenitor(saul,alfredo).
progenitor(saul,brenda).

progenitor(oliva,ricardo).
progenitor(oliva,esperanza).
progenitor(oliva,abelina).
progenitor(oliva,teodolo).
progenitor(oliva,anabel).
progenitor(oliva,otilia).
progenitor(oliva,marcial).
progenitor(oliva,elizabeth).

progenitor(pepe,ricardo).
progenitor(pepe,esperanza).
progenitor(pepe,abelina).
progenitor(pepe,teodolo).
progenitor(pepe,anabel).
progenitor(pepe,otilia).
progenitor(pepe,marcial).
progenitor(pepe,elizabeth).

progenitor(lucia,arnulfo).
progenitor(lucia,graciela).
progenitor(lucia,david).
progenitor(lucia,raquel).
progenitor(lucia,prudencio).

progenitor(othon,arnulfo).
progenitor(othon,graciela).
progenitor(othon,david).
progenitor(othon,raquel).
progenitor(othon,prudencio).

progenitor(leonides,rebeca).
progenitor(leonides,amalio).
progenitor(leonides,josue).
progenitor(leonides,deni).
progenitor(leonides,joaquina).
progenitor(leonides,zuri).

progenitor(jairo,rebeca).
progenitor(jairo,amalio).
progenitor(jairo,josue).
progenitor(jairo,deni).
progenitor(jairo,joaquina).
progenitor(jairo,zuri).

progenitor(mario,roberto).
progenitor(mario,hipolito).
progenitor(mario,miguel).
progenitor(margarita,roberto).
progenitor(margarita,hipolito).
progenitor(margarita,miguel).

progenitor(beto,guillermo).
progenitor(beto,erika).
progenitor(beto,martin).
progenitor(catalina,guillermo).
progenitor(catalina,erika).
progenitor(catalina,martin).

progenitor(artemio,yanet).
progenitor(artemio,gabriela).
progenitor(izmari,yanet).
progenitor(izmari,gabriela).

% definimos las parejas

pareja(pedro,josefina).
pareja(josefina,pedro).

pareja(sostenes,porfiria).
pareja(porfiria,sostenes).

pareja(oscar,stefanie).
pareja(stefanie,oscar).

pareja(pepe,oliva).
pareja(oliva.pepe).

pareja(xochilt,german).
pareja(german,xochilt).

pareja(alberta,salvador).
pareja(salvador,alberta).

pareja(leonor,saul).
pareja(saul,leonor).

pareja(jesus,matilde).
pareja(matilde,jesus).

pareja(othon,lucia).
pareja(lucia,othon).

pareja(leonides,jairo).
pareja(jairo,leonides).

pareja(mario,margarita).
pareja(margarita,mario).

pareja(glafira,paulino).
pareja(paulino,glafira).

pareja(beto,catalina).
pareja(catalina,beto).

pareja(artemio,izmari).
pareja(izmari,artemio).


% definimos las reglas de prolog

hijo(X,Y) :- progenitor(Y,X), hombre(X).
hija(X,Y) :- progenitor(Y,X), mujer(X).
padre(X,Y):-hombre(X),progenitor(X,Y).
madre(X,Y):-mujer(X),progenitor(X,Y).
hermanos(X,Y):-progenitor(Z,X),progenitor(Z,Y), not(X==Y).
hermano(X,Y):-hombre(X),hermanos(X,Y).
hermana(X,Y):-mujer(X),hermanos(X,Y).
esposo(X,Y):-pareja(X,Y),hombre(X).
esposa(X,Y):-pareja(X,Y),mujer(X).
suegro(X,Y):-padre(X,Z),pareja(Y,Z).
suegra(X,Y):-madre(X,Z),esposos(Y,Z).
yerno(X,Y):-suegro(Y,X);suegra(Y,X),hombre(X).
nuera(X,Y):-suegro(Y,X);suegra(Y,X),mujer(X).
cuñados(X,Y):-((pareja(X,Z),hermanos(Z,Y));(pareja(Y,Z),hermanos(Z,X))).
cuñado(X,Y):-cuñados(X,Y),hombre(X).
cuñada(X,Y):-cuñados(X,Y),mujer(X).
abuelo(X,Y):-progenitor(Z,Y),padre(X,Z).
abuela(X,Y):-progenitor(Z,Y),madre(X,Z).
nieto(X,Y):-progenitor(Y,Z),progenitor(Z,X),hombre(X).
nieta(X,Y):-progenitor(Y,Z),progenitor(Z,X),mujer(X).
tio(X,Y):-progenitor(Z,Y),(hermano(X,Z);cuñado(X,Z)).
tia(X,Y):-progenitor(Z,Y),(hermana(X,Z);cuñada(X,Z)).
primo(X,Y):-progenitor(Z,X),progenitor(W,Y),hermanos(Z,W),hombre(X).
prima(X,Y):-progenitor(Z,X),progenitor(W,Y),hermanos(Z,W),mujer(X).

sobrino(X,Y) :- hermano(Y,W), progenitor(W,X).

% sobrino(X,Y) :-  hijo(X,Z), hermano(Z,Y), hombre(x).
sobrina(X,Y) :-  hija(X,Z), hermano(Z,Y), mujer(x).