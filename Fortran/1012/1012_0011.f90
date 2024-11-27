	subroutine sub1()
	common/com/i1
	integer*1  i1
!$omp threadprivate(/com/)
	i1 = 1
	end

	subroutine sub2()
	common/com/i2
	integer*2  i2
!$omp threadprivate(/com/)
	i2 = 2
	end

	subroutine sub4()
	common/com/i4
	integer*4  i4
!$omp threadprivate(/com/)
	i4 = 4
	end

	program main
        logical :: bad = .false.
!$omp parallel do ordered
	do i=1,3
        if (bad) then

	select case(i) 
        case (1)
	  call sub1()
        case (2)
	  call sub2()
        case (4)
	  call sub4()
        end select
        else
!$omp ordered
	select case(i) 
        case (1)
	  call sub4()
        case (2)
	  call sub2()
        case (4)
	  call sub1()
        end select
!$omp endordered
        endif
        end do
!$omp end parallel do
        print *,"PASS"
	end
