      integer(4),dimension(2,2)::m
      integer(4),dimension(2)::j
!$omp parallel workshare
      m = reshape((/1,2,3,4/),(/2,2/))
!$omp end parallel workshare
      call sub(m,i,j,k)
      if (i/=4) print *,"fail"
      if (j(1)/=2.or.j(2)/=4) print *,"fail"
      if (k/=2) print *,"fail"
      print *,'pass'
      end

      subroutine sub(m,i,j,k)
      integer(4),dimension(2,2)::m
      integer(4),dimension(2)::j

!$omp parallel workshare
      i = maxval(m)
      j = maxval(m,dim=1)
      k = maxval(m,mask=m<3)
!$omp end parallel workshare

      end
