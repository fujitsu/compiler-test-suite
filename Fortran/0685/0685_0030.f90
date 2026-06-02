      common /zz/ i,k
      i=1
      k=10
!$omp parallel private(/zz/)
      do i = 1,10
        k= 1
      enddo
!$omp end parallel
!$    if (.true.) then
!$      if (i/=1.or.k/=10) print *,"fail"
!$    else
        if (i/=11.or.k/=1) print *,"fail"
!$    endif
      print *,'pass'
      end
