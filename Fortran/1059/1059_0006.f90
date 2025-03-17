      integer(4),dimension(1:1000)::a
      a=(/(i,i=1,1000)/)
      i1=1
      i2=1000
      is=1
      j=0
      call sub(a,i1,i2,is,j)
      if (j/=500500.or.is/=i2+1) write(6,*) "NG"
      print *,'pass'
      end

      recursive subroutine sub(a,i1,i2,is,j)
      integer(4)::i1,i2,j,is
      integer(4),dimension(i1:i2)::a
      intent(in)::a,i2
!$    call OMP_SET_DYNAMIC(.false.)
!$    call OMP_SET_MAX_ACTIVE_LEVELS(.true.)
!$omp parallel
!$omp do reduction(+:j),lastprivate(k),schedule(static)
      do k=is,is+99,1
        j=j+a(k)
      enddo
!$omp enddo
!$omp endparallel
      is=k
      i1=k
      if (is.ge.i2) return
      call sub(a(i1:i2),i1,i2,is,j)
      end subroutine
