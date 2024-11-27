	integer function ifun()
	common/com1/i1
!$omp threadprivate(/com1/)
	common/com2/i2
!$omp threadprivate(/com2/)
	ifun = i1 + i2
	end

	program main
	integer ifun
	j = ifun()
	if (j == 3) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end

	block data
	common/com1/i1
!$omp threadprivate(/com1/)
	common/com2/i2
!$omp threadprivate(/com2/)
	data i1/1/
        data i2/2/
	end
