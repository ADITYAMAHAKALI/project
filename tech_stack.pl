/*
choosing a proper tech stack is crucial for good project development,
there are multiple options available for frontend, backend, databases, server-hosting, 
native applications for mobile(android, ios), desktop(windows, mac, various linux distros).
One should choose a tech stack appropriate for the task, that can be implemented efficiently
and fulfills requirements such as scalability and security.
*/

/* facts for frontend 
frontend(name, platform, Language,experience)
*/ 
frontend(html_css_vanillajs,web,js,beginner).
frontend(flutter, multiplatform,dart,intermediate).
frontend(react, multiplatform,js,intermediate).
frontend(xamarin, multiplatform,c_sharp,intermediate).
frontend(reactjs,web,js,intermediate).
frontend(angular,web,js,intermediate).
frontend(vue,web,js,intermediate).

/*
facts for backend
backend(name, language,experience)
*/
backend(django,python,intermediate).
backend(flask,python,beginner).
backend(expressjs,js,intermediate).
backend(lavarel,php,beginner).
backend(asp_dot_net,c_sharp,intermediate).
backend(spring_boot,java,intermediate).
backend(koa,js,intermediate). 

/* facts for native application
native(platform,language)
*/ 
native(android,kotlin).
native(ios,swift).
native(windows,dot_net).
native(ubuntu,flutter).
native(macos,swift).

/* cloud server */

server(aws).
server(azure).
server(gcp).
server(digital_ocean_droplet).

/* feature(name,technology,language)*/
feature(blockchain,solidity,cpp).
feature(machine_learning,sklearn,python).
feature(deep_learning,tensorflow,python).
feature(game_development,unity,c_sharp).
feature(game_development,opengl,cpp).
feature(operating_system,kernel_programming,c). 


menu(Ans) :- write('   You want a tech stack for:-'),nl,
                write('   1. web.'),nl,
                write('   2. native.'),nl,
                write('   3. feature'),nl,
                read(Ans),nl.

frontend_on_level(Level):- write("What is level of your experience in frontend development"),nl,
                write('   1. beginner.'),nl,
                write('   2. intermediate.'),nl,
                read(Level),nl,
                frontend(X,Y,Level), write("Frontend : "), write(X), write(" on "), write(Y).

show_frontend(X,Y,Z,W):-frontend(X,Y,Z,W),nl,
                   write("For Frontend you can use "),write(X), write(" which is "), write(Z),nl.



start:-
    write("This is an expert system to recommend tech stack"),nl,
    write("Answer the following question to begin the recommendation Process"),nl,
        write('   What is your name? '),
                    read(Name),nl,
                    write('   Hello '),
                    write(Name),nl,
        write('   You want a tech stack for:-'),nl,
                write('   1. web.'),nl,
                write('   2. native.'),nl,
                read(For),nl,
        (
            For == 'web'->
            (
                write("What is level of your experience in frontend development"),nl,
                write('   1. beginner.'),nl,
                write('   2. intermediate.'),nl,
                read(LevelFront),nl,

                write("Do you want to develop for multiplatform or web "),nl,
                write('   1. multiplatform.'),nl,
                write('   2. web.'),nl,
                read(Choice),nl,

                write("What is level of your experience in backend development"),nl,
                write('   1. beginner.'),nl,
                write('   2. intermediate.'),nl,
                read(LevelBack),nl,
                write("On Which Programming you can write good logic "),nl,
                write('   1. java.'),nl,
                write('   2. python.'),nl,
                write('   3. js'),nl,
                write('   4. c_sharp'),nl,
                write('   5. php'),nl,
                read(Language),nl,

                frontend(X,Choice,Y,LevelFront),
                write(X), write(" for frontend"), write(" on "),write(Y), write(" as an "),
                write(LevelFront),write(" level frontend developer, and"),nl,
                
                backend(A,Language,LevelBack),
                write(A), write(" for backend "), write("on "),write(Language), write(" as an "),
                write(LevelBack),write(" level backend developer"),nl,nl
            );
            (write("which native platform is your target"),nl,
                write('   1. android.'),nl,
                write('   2. ios.'),nl,
                write('   3. windows.'),nl,
                write('   4. ubuntu.'),nl,
                write('   5. macos.'),nl,
                read(Platform),nl,
                write("What is level of your experience in backend development"),nl,
                write('   1. beginner.'),nl,
                write('   2. intermediate.'),nl,
                read(LevelBack),nl,
                write("On Which Programming you can write good logic "),nl,
                write('   1. java.'),nl,
                write('   2. python.'),nl,
                write('   3. js'),nl,
                write('   4. c_sharp'),nl,
                write('   5. php'),nl,
                read(Language),nl,
                native(Platform,Tech),
                write("You can use "),
                write(Tech), write(" to develop applications for  "), write(Platform),nl,nl,
                backend(A,Language,LevelBack),
                write(A), write(" for backend "), write("on "),write(Language), write(" as an "),
                write(LevelBack),write(" level backend developer"),nl,nl)
        ),
        write("Do you want to add extra feature to your application ans yes. or no."),nl,
        read(Response),
        (
            (Response == 'yes'; Response=='YES'; Response=='y')->
            write("which feature is your target"),nl,
                write('   1. blockchain.'),nl,
                write('   2. machine_learning.'),nl,
                write('   3. deep_learning.'),nl,
                write('   4. game_development.'),nl,
                write('   5. operating_system.'),nl,
                read(Feature),
                feature(Feature, On, Lang),
                write("To develop "), write(Feature),write(" use "),
                write(On), write(" with programming language "), write(Lang),nl,nl
        ),
        write("Do you need a server to host "),nl,
        read(Res),
        (
            (Res == 'yes'; Res=='YES'; Res=='y')->
            write("Choose backend of your choice "),nl,
                write('   1. aws.'),nl,
                write('   2. azure.'),nl,
                write('   3. gcp.'),nl,
                write('   4. digital_ocean_droplet.'),nl,
                read(Server),
                server(Server),
                write("You can use "), write(Server),nl,nl
        ),
        write("Recommendation Complete").

language_level_based(Lang,Level):- frontend(X,Y,Lang,Level),
backend(Z,Lang,Level),
write("You can use : "),nl,
write(X), write(" For frontend"), write(" Which is on "), write(Y),
write(" and, "),nl,
write(Z), write(" For backend")
.

feature_on_language(Lang):- feature(Feature,On,Lang),
write("You can work on "), write(Feature), write(" with "), write(On), write(" based on your knowledge of "), write(Lang).
        