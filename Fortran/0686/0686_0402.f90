      integer(4),dimension(2,2)::m
      integer(4),dimension(2)::j
!$omp parallel workshare
      m = reshape((/1,2,3,4/),(/2,2/))
!$omp end parallel workshare
      call sub(m,i,j,k)
      if (i/=1) print *,"fail"
      if (j(1)/=1.or.j(2)/=3) print *,"fail"
      if (k/=1) print *,"fail"
      print *,'pass'
      end

      subroutine sub(m,i,j,k)
      integer(4),dimension(2,2)::m
      integer(4),dimension(2)::j

!$omp parallel workshare
      i = minval(m)
      j = minval(m,dim=1)
      k = minval(m,mask=m<3)
!$omp end parallel workshare

      end
