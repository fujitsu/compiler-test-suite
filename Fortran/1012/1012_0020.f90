        subroutine sub
	common/com1/a
	common/com2/b
	common/com3/c
!$omp threadprivate(/com1/,/com2/,/com3/)
        a = a + 1
        entry ent
        c = 1
	end

	program main
        call ent
        call sub
        print *,"OK"
	end

        block data
        common/com1/b
!$omp threadprivate(/com1/)
        data b/1/
        end
