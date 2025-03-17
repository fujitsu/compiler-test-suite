      program main
        integer(kind=4),allocatable:: a(:)
        integer(kind=4):: i
        allocate( a(100) )
        a = -99
!$omp parallel
!$omp   sections private(i)
!$omp     section
          do i=1,24
            a(i) = a(i) + i + 99
          end do
!$omp     section
          do i=25,49
            a(i) = a(i) + i + 99
          end do
!$omp     section
          do i=50,74
            a(i) = a(i) + i + 99
          end do
!$omp     section
          do i=75,100
            a(i) = a(i) + i + 99
          end do
!$omp   end sections nowait
!$omp end parallel
        do i=1,100
          if( a(i) /= i ) then
            print *,'NG : a(',i,')=',a(i)
            call exit
          end if
        end do
        print *,'OK'
      end program main
