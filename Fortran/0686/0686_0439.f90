    module mod0
        integer(4)::a(2,2,2)
        integer(4)::b(8    )
        equivalence(a(1,1,1),b(1))
        logical(8)::ll
    end module

    module mod2
      use mod0
    contains
      subroutine sub1
!$omp parallel workshare
      forall(i=1:2 ,i<3)
        forall(j=1:2 ,i<3)
          forall(k=1:2 ,i<3)
            a(k,j,i)=i*100+j*10+k
          endforall
        endforall
      endforall
!$omp end parallel workshare
      end subroutine
    end module

    module mod3
      use mod0
    contains
      subroutine sub2()
!$omp parallel workshare
      ll = any(b/=(/111,112,121,122,211,212,221,222/))
!$omp end parallel workshare
      end subroutine
    end module

      program abc
        use mod0
        use mod2
        use mod3
        call sub1()
        call sub2()
        if (ll) print *,"fail"
        print *,'pass'
      end program
