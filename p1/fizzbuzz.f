c ---------------------------------------------------
c File:     fizzbuzz.f
c Author:   Nicholas Klvana-Hooper
c Created:  18/8/2020
c Modified: 7/10/2020
c Purpose:  Basic fizzbuzz program in fortran
c ---------------------------------------------------

        program fizzbuzz
        
        integer i

c Loops through from 1-100
        do 10 i = 1, 100
c Fizzbuzz occurs every multiple of 15
            if(mod(i, 15) .EQ. 0) then
                write (*,*) 'fizz buzz'
            else
c Otherwise fizz every multiple of 3 and buzz every one of 5
                if (mod(i, 3) .EQ. 0) then
                    write (*,*) 'fizz'
                elseif (mod(i, 5) .EQ. 0) then
                    write (*,*) 'buzz'
                else
c If not a multiple of 3,5,15 then print number
                    write (*,*) i
                endif
            endif
10      continue

        stop
        end
