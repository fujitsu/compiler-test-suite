      integer(2),dimension(3)::a,b,c
      a = (/3_2,4_2,5_2/)
      b = (/6_2,7_2,8_2/)
!$omp parallel
      call sub(a,b,c,3)
!$omp end parallel
      print *,'pass'
      end

      subroutine sub(a,b,c,len)
      integer(2),dimension(len)::a,b,c
      logical(2)::lany,lall
!$omp workshare
      forall(i=1:len:1)
      c(i) = dot_product(a,b)
      end forall
!$omp end workshare
      if (any(c/=(/86_2,86_2,86_2/))) print *,"fail"
      if (.not. all(c==(/86_2,86_2,86_2/))) print *,"fail"
      end
