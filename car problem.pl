%an expert system that can help diagnose a problem with a car that wont
% start
% Diagnostic session : system probes for possible causes
% asks, notes response and gives recommendation
car_wont_start:-
    problem_with_battery;
    problem_with_cables;
    problem_with_starter;
    problem_with_switch;
    problem_with_fuel.
car_wont_start:-n1,n1,
    write('sorry, I can`t diagnose the car problem, Maybe you never answered the question correctly'),n1,n1.

problem_with_battery:-n1,
    write('Is the battery voltage ok(Yes/No)'),
    read(Battery),Battery=no,n1,n1,
    write('Recharge the battery and turn the key'),n1.

problem_with_cables:-n1,
    write('Are the cables faulty(Yes/No)'),
    read(Cables),Cables=yes,n1,n1,
    write('Replace cables and turn the key'),n1.

problem_with_starter:-n1,
    write('Is your starter motor okay?(Yes/No)'),
    read(Starter),Starter=no,n1,n1,
    write('Do you want to repair or replace the motor?'),n1,n1,
    write('====================================='),n1,n1,
    write('1:   Replace'),n1,
    write('2:   Repair'),n1,
    write('Enter your choice: '),
    read(Choice),starter(Choice).

  starter(Choice):-Choice=:=1,n1,write('Replace the motor with new one'),n1.
  starter(Choice):-Choice=:=2,n1,write('Repair the Starter and find out if it works'),n1.

problem_with_switch:-n1,
    write('is your ignition switch ok(Yes/No)'),
    read(Switch), Switch=no,n1,n1,
    write('Replace the switch and turn the key'),n1.

problem_with_fuel:-n1,
    write('Is your petrol tank empty?(Yes/No)'),
    read(Fuel), Fuel= yes,n1,n1,
    write('Buy petrol and turn on the key'),n1.


