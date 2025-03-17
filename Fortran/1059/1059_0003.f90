      interface
        recursive subroutine sub(i,j)
          integer(4)::i,j
        end subroutine
      endinterface
      i=0
      j=0
      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_MAX_ACTIVE_LEVELS(.true.)
      call sub(i,j)
      if (i/=2000.or.j/=20) write(6,*) "NG"
      print *,'pass'
      end

      recursive subroutine sub(i,j)
      integer(4)::i,j
      j=j+1
!$omp parallel
!$omp do reduction(+:i)
      do k=1,100
        i=i+1
      enddo
!$omp enddo
!$omp endparallel
      if (j*100/=i) print *,'j=',j,'i=',i
      if (i>=1901) return
      call sub(i,j)
      end subroutine
