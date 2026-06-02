      integer::a(4)
      call sub(a)
      if (any(a/=(/11,21,12,22/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub(a)
      integer::a(2,2)
!$omp parallel workshare
      forall(i=1:2)
        forall(j=1:2)
          a(j,i)=j*10+i
        endforall
      endforall
!$omp end parallel workshare
      end
