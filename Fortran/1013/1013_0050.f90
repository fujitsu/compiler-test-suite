        subroutine sub
        save i
        data i/1/
!$omp threadprivate(i)
        i = i + 1
        if (i .ne. 2) stop "NG"
        end

        call sub
        print *,"PASS"
        end
