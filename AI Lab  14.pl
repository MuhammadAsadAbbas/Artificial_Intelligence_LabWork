% Expert system for determining favorite sports

% Define the sports and their attributes
% sport(Sport, Type, Location)
sport(basketball, team, indoor).
sport(football, team, outdoor).
sport(tennis, individual, outdoor).
sport(swimming, individual, outdoor).
sport(volleyball, team, indoor).

% Define the rules for determining favorite sports
favorite_sport(Sport) :-
    write('Do you prefer team or individual sports? '),
    read(Type),
    write('Do you prefer indoor or outdoor sports? '),
    read(Location),
    sport(Sport, Type, Location).

% Run the expert system
run_expert_system :-
    favorite_sport(Sport),
    write('Your favorite sport is '),
    write(Sport),
    !.

run_expert_system :-
    write('Unable to determine your favorite sport.').
