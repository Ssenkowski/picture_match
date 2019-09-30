Rendering and Props Hierarchy

        Welcome
        /      \
       /        \
    Options     User 
                    \
                     \
                      Play
                         \___ GameBoard 
                         /    \
                        /      \
                Scoreboard      Cards/Pieces

< Welcome/ > renders < Options/ > and < User/ > and sends information down the hierarchy. < Options / > may receive information about the current user's game and the rendered board and < User / > can receive an array of items. The < Play / > component will take the information and create a board of < GameBoard / > components which will contain data about every single object. The < Scoreboard / > component will contain information about the game and < Cards/Pieces / > will display the blank backside of cards that when  clicked will flip with the text of a verse or the Book,Chapter, Verse with the goal of matching them.  Once  matched  the two cards will be removed, leaving a blank space where each of them used to be.