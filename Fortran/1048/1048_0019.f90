      program main
        integer(kind=4):: b
        b = -99
!$omp parallel
!$omp   sections private(b)
!$omp     section
          b = b + 1
!$omp     section
          b = b + 2
!$omp     section
          b = b + 3
!$omp     section
          b = b + 4
!$omp   end sections
!$omp end parallel
        if( b /= -99 ) then
          print *,'NG : b=',b
          stop
        end if
        print *,'OK'
      end program main
