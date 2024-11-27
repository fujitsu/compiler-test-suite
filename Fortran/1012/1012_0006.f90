        subroutine sub
	common/com1/a
	common/com2/b
	common/com3/c
!$omp threadprivate(/com1/,/com2/,/com3/)
        a = a + 1
	end

	program main
	common/com1/a
!$omp threadprivate(/com1/)
        a = 0
        do i=1,2
          call sub
        enddo
        if (a == 2) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end
