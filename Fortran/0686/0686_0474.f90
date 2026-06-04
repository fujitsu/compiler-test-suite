    module mod1
      integer(4),dimension(10)::a=(/(i,i=1,10)/)
      integer(4),dimension(10)::b
      private :: a
      public  :: b
    contains
      subroutine sub1
!$omp parallel workshare
      forall (i=1:10:1)
        b(i)=a(i)
      end forall
!$omp end parallel workshare
      end subroutine sub1
    end module mod1

    module mod2
      integer(4),dimension(10)::a=(/(i,i=1,10)/)
      integer(4),dimension(10)::c
      private :: a
      public  :: c
    contains
      subroutine sub2
!$omp parallel do
      do i=1,10
        c(i)=a(i)
      enddo
!$omp end parallel do
      end subroutine sub2
    end module mod2

    module mod3
      use mod1
      use mod2
    contains
      subroutine sub3(l)
      logical(4)::l
!$omp parallel workshare
       l = any(b/=c)
!$omp end parallel workshare
      end subroutine sub3
    end module mod3

    program abc
      use mod1
      use mod2
      use mod3
      logical(4)::l
      call sub1
      call sub2
      call sub3(l)
      if (l) print *,"fail"
      print *,'pass'
    end
