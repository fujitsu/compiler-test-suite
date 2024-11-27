        subroutine sub
	common/com1/a
	common/com2/b
	common/com3/c
!$omp threadprivate(/com1/,/com2/,/com3/)
        if (c == 0) then
          a = a + 1
        else 
          b = b + 1
        endif
	end

	program main
	common/com1/a
	common/com2/b
	common/com3/c
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
!$omp threadprivate(/com3/)
        a = 0
        b = 0
        c = 0
        call sub
        c = 1
        call sub
        if (a == 1 .and. b == 1) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end
