      program main
        integer(kind=4),allocatable:: a(:), b(:), c(:)
        integer(kind=4):: i
        allocate( a(100), b(100), c(100) )
        a = -99
        b = -88
        c = -77
!$omp parallel
!$omp   sections private(a) firstprivate(b) lastprivate(b) reduction(+:c)
!$omp     section
          a = a + 1
          b = b + 1
          c = c + 1
!$omp     section
          a = a + 2
          b = b + 1
          c = c + 1
!$omp     section
          a = a + 3
          b = b + 1
          c = c + 1
!$omp     section
          a = a + 4
          b = b * (-1)
          c = c + 1
!$omp   end sections
!$omp end parallel
        do i=1,100
          if( a(i) /= -99 ) then
            print *,'NG : a(',i,')=',a(i)
            error stop 1
          else if( b(i) <= 0 ) then
            print *,'NG : b(',i,')=',b(i)
            error stop 2
          else if( c(i) /= -73 ) then
            print *,'NG : c(',i,')=',c(i)
            error stop 3
          end if
        end do
        print *,'OK'
      end program main
