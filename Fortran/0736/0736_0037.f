        call sub(0)
        write(1,*)0
        rewind 1
        read(1,*) ii
        if (ii/=0)write(6,*) "NG"
        print *,'pass'
        end
        subroutine sub(i)
        i=2
        end
