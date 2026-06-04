      common /com/ i,j,k
      integer a(5)
      i=7;j=7;k=7
!$omp parallel private(/com/,a)
      i=1;j=5;k=1
      do m=i,j+k-1,j-i-k
      a(m:5) = m
      enddo
      if (any(a/=(/1,1,1,4,4/))) print *,"fail"
!$omp endparallel
 !$   if (.true.) then
 !$     if (i/=7.or.j/=7.or.k/=7) print *,"fail"
 !$   else
        if (i/=1.or.j/=5.or.k/=1) print *,"fail"
 !$   endif
      print *,'pass'
      end
