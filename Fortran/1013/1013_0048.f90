        block data
        common/com/i
!$omp threadprivate(/com/)
        data i/1/
        common/empty/e
!$omp threadprivate(/empty/)
        character*1 :: e(0:-1) = ""
        end

        print *,"PASS"
        end
