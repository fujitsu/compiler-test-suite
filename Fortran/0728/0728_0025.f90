      call test01()
      call test02()
      print *,'pass'
      end

      module mod1
      interface assignment(=)
       module procedure mod_sub
      end interface
      contains
      subroutine mod_sub(ii1,ii2)
       intent(in):: ii2
       intent(inout) :: ii1
      integer ii1(100)
      logical ii2(10,10)
      integer i1(10),i2(3),i3(3),i4(3)
      equivalence (i1(1),i2(1))
      equivalence (i1(4),i3)
      equivalence (i1(7),i4)
      data i2/1,1,1/
      data i3/1111,111,111/
      data i4/1111,111,111/
      if (i1(4).ne.1111) write(6,*) "NG"
      end subroutine
      end module
      subroutine test01()
      use mod1
      integer ii1(100)
      logical ii2(10,10)
      ii1=1
      ii2=.true.
      call mod_sub(ii1,ii2)
      end subroutine

      module mod2
      interface operator(.aaa.)
       module procedure mod_sub
      end interface
      contains
      function   mod_sub(ii1,ii2)
       intent(in):: ii2
       intent(in) :: ii1
      integer ii1(100)
      logical ii2(10,10)
      integer i1(10),i2(3),i3(3),i4(3)
      equivalence (i1(1),i2(1))
      equivalence (i1(4),i3)
      equivalence (i1(7),i4)
      data i2/1,1,1/
      data i3/1111,111,111/
      data i4/1111,111,111/
      if (i1(4).ne.1111) write(6,*) "NG"
      mod_sub=1
      end function  
      end module
      subroutine test02()
      use mod2
      integer ii1(100)
      logical ii2(10,10)
      ii1=1
      ii2=.true.
      call =mod_sub(ii1,ii2)
      end subroutine
