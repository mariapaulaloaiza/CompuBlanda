enfermedad(neumonia).
enfermedad(tuberculosis).
enfermedad(gripa).
enfermedad(gastritis).
enfermedad(hepatitisB).


%neumonia----------------------------------------------

sintoma(fiebre,neumonia).
sintoma(dolorCabeza , neumonia).
sintoma(escalofrios, neumonia).
sintoma(tos,neumonia).

%tuberculosis------------------------------

sintoma(fiebre,tuberculosis).
sintoma(cansancio,tuberculosis).
sintoma(tos ,tuberculosis).
sintoma(sudoracion ,tuberculosis).

%gripa--------------------------------------------

sintoma(tos ,gripa).
sintoma(fiebre ,gripa).
sintoma(dolorCabeza,gripa).
sintoma(congestion,gripa).


%gastritis----------------------------
sintoma(nauseas,gastritis).
sintoma(dolorParteAltaAbdomen,gastritis).
sintoma(faltaApetito,gastritis).
sintoma(acidezEstomacal,gastritis).


% Hepatitis B
sintoma(fiebre,hepatitisB).
sintoma(nauseas,hepatitisB).
sintoma(dolorParteAltaAbdomen,hepatitisB).
sintoma(ictericia,hepatitisB).


consultar([],_). 
consultar(X , E) :- sintoma(X, E). 
consultar([X|Xs], E) :- 
   
    enfermedad(E),
    consultar(X, E), 
    consultar(Xs, E).

menu:-
  write('Ingrese nombre paciente'),nl,
  read(NOMBRE),
 write('Ingrese sintomas en forma de lista'),nl,
  read(SINTOMA),
  consultar([SINTOMA],E),
  write('El paciente '),
  write(NOMBRE),
  write(' puede tener '),
  write(E).