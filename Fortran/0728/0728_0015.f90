      call sub1()
      call sub()
      print *,'pass'
      end

      module mod
       interface aa
        module procedure sss
       end interface
       contains
       subroutine sss()
      integer i1(10),j1(10),w(3,3),b(10)
      equivalence(i1(5),j2)
      equivalence(j2,j3)
      equivalence(j3,w(1,3))
      equivalence(w(2,3),j4)
      equivalence(j4,b(10))
      equivalence(b(7),k)
      equivalence(k,j1(5))
       end subroutine
      end
      subroutine sub()
      use mod
      end

      module mod1
      equivalence(i1,j1)
      end module
      subroutine sub1()
      use mod1
      i1=10
      if (j1.ne.10) write(6,*) "NG"
      end subroutine 
      module mod2
      integer i1(10),j1(10)
      equivalence(i1(5),j1(5))
      end module
      subroutine sub2()
      use mod2
      i1=(/(i,i=1,10)/)
      do i=1,10
      if (j1(i).ne.i) write(6,*) "NG"
      end do
      end subroutine 
      module mod3
      integer i1(10),j1(10),w(3,3),b(10)
      equivalence(i1(5),j2)
      equivalence(j2,j3)
      equivalence(j3,w(1,3))
      equivalence(w(2,3),j4)
      equivalence(j4,b(10))
      equivalence(b(7),k)
      equivalence(k,j1(5))
      end module
      subroutine sub3()
      use mod3
      i1=(/(i,i=1,10)/)
      do i=1,10
      if (j1(i).ne.i) write(6,*) "NG"
      end do
      end subroutine 
