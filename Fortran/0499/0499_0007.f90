integer,parameter :: i1=1
 !$omp do collapse(int(-(i1)+2))
 do k=1,1
 do k1=1,1
 enddo
 enddo
 !$omp do ordered(int(-(i1)+2))
 do k=1,1
 do k1=1,1
 enddo
 enddo
 !$omp end do
 print *,'pass'
 end

