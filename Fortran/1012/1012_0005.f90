        subroutine sub
	common/com1/a
	common/com2/b
	common/com3/c
!$omp threadprivate(/com1/,/com2/,/com3/)
        if (a == 0) a = a + 1
	end

	program main
	common/com1/a
	common/com2/b
!$omp threadprivate(/com1/)
!$omp threadprivate(/com2/)
        a = 0
        b = 0
        do i=1,2
          call sub
        enddo
        if (a == 1 .and. b == 0) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end
