	integer function ifun()
	type TAG
	sequence
	integer i
	end type
	type(TAG) st
	common/com/st
!$omp threadprivate(/com/)
        st%i = 1
	ifun = st%i
	end

	program main
	integer ifun
	j = ifun()
	if (j == 1) then
          print *,"OK"
        else
          print *,"NG"
        endif
	end
