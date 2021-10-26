
the random number generated in the mineslazer program depended on the current time, so my
approach was basically to run the code on my own system at the same time as i connected 
to the challenge server using telnet (and ran the challenge from there).. and hopefully 
the time lag would be minimal and i would guess the same random number and then solve 
the challenge. But that didn't work. 

what i had to do was to find out how the xoroshift128 random number generator was broken.. and
 use the ideas from there. 
