      program main
        integer(kind=4):: b
        b = -99
!$omp parallel
!$omp   sections lastprivate(b)
!$omp     section
          b = 1
!$omp     section
          b = 2
!$omp     section
          b = 3
!$omp     section
          b = 4
!$omp   end sections
!$omp end parallel
        if( b /= 4 ) then
          print *,'NG : b=',b
          stop
        end if
        print *,'OK'
      end program main
