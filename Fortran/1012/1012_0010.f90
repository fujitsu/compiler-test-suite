	integer function ifun()
	common/com/i
!$omp threadprivate(/com/)
	ifun = i
	end

	program main
	integer ifun
	common/com/k
!$omp threadprivate(/com/)
!$omp parallel do private(j)
	do i=1,10
        k = i
	j = ifun()
	if (j .ne. i) then
          print *,"NG"
        endif
        end do
!$omp end parallel do
        print *,"OK"
	end
