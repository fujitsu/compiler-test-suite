      integer::a(8)
      logical::ll
      call sub1(a)
      call sub2(a,ll)
      if (ll) print *,"fail"
      print *,'pass'
      end

      subroutine sub1(a)
      integer::a(2,2,2)
!$omp parallel workshare
      forall(i=1:2 ,i<3)
        forall(j=1:2 ,i<3)
          forall(k=1:2 ,i<3)
            a(k,j,i)=i*100+j*10+k
          endforall
        endforall
      endforall
!$omp end parallel workshare
      end

      subroutine sub2(a,ll)
      integer::a(8)
      logical::ll
!$omp parallel workshare
      ll = any(a/=(/111,112,121,122,211,212,221,222/))
!$omp end parallel workshare
      end
