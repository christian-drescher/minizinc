% Colouring Tbilisi using nc colours

int: nc = 3;

var 1..nc: glda; % Gldani
var 1..nc: isan; % Isani
var 1..nc: krts; % Krtsanisi
var 1..nc: mtat; % Mtatsminda
var 1..nc: nadz; % Nadzaladevi
var 1..nc: ortc; % Ortchala
var 1..nc: sabu; % Saburtalo
var 1..nc: samg; % Samgori
var 1..nc: vake; % Vake

constraint glda != nadz;
constraint glda != sabu;
constraint isan != krts;
constraint isan != ortc;
constraint isan != samg;
constraint krts != mtat;
constraint krts != samg;
constraint mtat != sabu;
constraint mtat != ortc;
constraint mtat != vake;
constraint nadz != ortc;
constraint nadz != samg;
constraint ortc != samg;
constraint sabu != vake;

solve satisfy;
