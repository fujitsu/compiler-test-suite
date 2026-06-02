      integer,parameter::n=50
      k=0;m=0;j=0
      call sub(n,k,m,j)
      if (k/=j.or.k/=m) print *,"fail"
      print *,'pass'
      end

      subroutine sub(n,k,m,j)
!$omp parallel

 !$omp do reduction(+:k)
      do i=1,n
         k=k+i
      enddo
 !$omp enddo

 !$omp do
      do i=n,1,-1
  !$omp critical
         j=j+i
  !$omp end critical
      enddo
 !$omp enddo

 !$omp sections reduction(+:m)
  !$omp section
      do i=1,n,2
         m=m+i
      enddo
  !$omp section
      do i=2,n,2
         m=m+i
      enddo
 !$omp end sections

!$omp end parallel

      end
