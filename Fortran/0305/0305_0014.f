        subroutine sub(c,a)
        complex c, a(1000)
        do i=1,1000
        c = c + a(i)**2
        end do
        end

        complex c, a(1000)
        c = 0
        a = 1.
        call sub(c,a)
        if (c == 1000.0) then
           print *,"OK"
        else 
           print *,"NG"
        endif
        end
