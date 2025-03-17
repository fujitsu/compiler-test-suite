      integer(4),dimension(1:100)::a
      a=(/(i,i=1,100)/)
      i1=1
      i2=100
      is=1
      j=0
      call sub(a,i1,i2,is,j)
      if (j/=5050.or.is/=i2+1) write(6,*) "NG"
      print *,'pass'
      end

      recursive subroutine sub(a,i1,i2,is,j)
      integer(4)::i1,i2,j,is
      integer(4),dimension(i1:i2)::a
      intent(in)::i1,i2,a
      if (is.ge.i2) return
!$    call OMP_SET_DYNAMIC(.false.)
!$    call OMP_SET_MAX_ACTIVE_LEVELS(.true.)
!$omp parallel
!$omp do reduction(+:j),lastprivate(k)
      do k=is,is+9,1
        j=j+a(k)
      enddo
!$omp enddo
!$omp endparallel
      is=k
      call sub(a(i1),i1,i2,is,j)
      end subroutine
