      integer(2),dimension(3)::a,b
      a = (/3,4,5/)
      b = (/6,7,8/)
!$omp parallel
      call sub(a,b,3,i)
!$omp end parallel
      print *,'pass'
      end

      subroutine sub(a,b,len,i)
      integer(2),dimension(len)::a,b,c
      logical(2)::lany,lall
!$omp workshare
      i = dot_product(a,b)
!$omp end workshare
      if (i/=86) print *,"fail"
      end
