        call sub(0)
        write(3,*)0
        rewind 3
        read(3,*) ii
        if (ii/=0)write(6,*) "NG"
        print *,'pass'
        end
        subroutine sub(i)
        i=2
        end
