      program main
        integer(kind=4):: b
        b = -99
!$omp parallel
!$omp   sections reduction(+:b)
!$omp     section
          b = b + 1
!$omp     section
          b = b + 1
!$omp     section
          b = b + 1
!$omp     section
          b = b + 1
!$omp   end sections
!$omp end parallel
        if( b /= -95 ) then
          print *,'NG : b=',b
          stop
        end if
        print *,'OK'
      end program main
