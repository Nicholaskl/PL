        program sumloop
        
        integer i

c Loops through from 1-100

        do 10 i = 1, 100
            if(mod(i, 15) .EQ. 0) then
                write (*,*) 'fizz buzz'
            else
                if (mod(i, 3) .EQ. 0) then
                    write (*,*) 'fizz'
                elseif (mod(i, 5) .EQ. 0) then
                    write (*,*) 'buzz'
                else
                    write (*,*) i
                endif
            endif
10      continue

        stop
        end
