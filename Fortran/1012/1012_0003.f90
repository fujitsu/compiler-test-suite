        subroutine sub
	common/com1/a
	common/com2/b
	common/com3/c
!$omp threadprivate(/com1/,/com2/,/com3/)
        b = b + 1
	end

	program main
	common/com2/b
!$omp threadprivate(/com2/)
        b = 0
        do i=1,2
          call sub
        enddo
        if (b == 2) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end