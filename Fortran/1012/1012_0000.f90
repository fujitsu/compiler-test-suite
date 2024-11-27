	integer function ifun()
	common/com/i
!$omp threadprivate(/com/)
	ifun = i
	end

	program main
	common/com/i
!$omp threadprivate(/com/)
	integer ifun
        i = 0
	j = ifun()
	if (j .eq. 0) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end
