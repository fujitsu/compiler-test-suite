      program main
        integer(kind=4),allocatable:: a(:,:)
        integer(kind=4):: i, j, n
        allocate( a(10,10) )
        a = -88
!$omp parallel
!$omp   sections private(i)
!$omp     section
          n = 1
          do i=1,10
            do j=1,10
              a(i,j) = a(i,j) + n + 88
              n = n + 1
            end do
          end do
!$omp   end sections nowait
!$omp end parallel
     
        n = 1
        do i=1,10
          do j=1,10
            if( a(i,j) /= n ) then
              print *,'NG : a(',i,',',j,')=',a(i,j),'/',n
              call exit
            end if
            n = n + 1
          end do
        end do
        print *,'OK'
      end program main
