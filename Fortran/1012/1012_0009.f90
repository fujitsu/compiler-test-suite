        subroutine sub
	common/com1/a
	common/com2/b
	common/com3/c
!$omp threadprivate(/com1/,/com2/,/com3/)
        if (a == 0) then
          b = b + 1
        else 
          c = c + 1
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
        a = 1
        call sub
        if (b == 1 .and. c == 1) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end
