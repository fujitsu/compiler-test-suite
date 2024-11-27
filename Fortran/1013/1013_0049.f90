        subroutine sub
        common/com/i
!$omp threadprivate(/com/)
        i = i + 1
        end

        print *,"PASS"
        end
