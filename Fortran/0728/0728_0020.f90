      call test01()
      call test02()
      print *,'pass'
      end 
      module mod1
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer,dimension(10) :: a1,a2,a3,a4,a5,a6,a7,a8,a9
      integer i1,i2,i3,i4,i5,i6,i7,i8,i9
      integer j1,j2,j3,j4,j5,j6,j7,j8,j9
      integer,dimension(10) :: b1,b2,b3,b4,b5,b6,b7,b8,b9
      integer,dimension(10) :: c1,c2,c3,c4,c5,c6,c7,c8,c9
      equivalence (a1(1),i1)
      equivalence (a2(2),i2)
      equivalence (a3(3),i3)
      equivalence (a4(4),i4)
      equivalence (a5(5),i5)
      equivalence (a6(6),i6)
      equivalence (a7(7),i7)
      equivalence (a8(8),i8)
      equivalence (a9(9),i9)
      equivalence (b1(9),j1)
      equivalence (b2(8),j2)
      equivalence (b3(7),j3)
      equivalence (b4(6),j4)
      equivalence (b5(5),j5)
      equivalence (b6(4),j6)
      equivalence (b7(3),j7)
      equivalence (b8(2),j8)
      equivalence (b9(1),j9)
      equivalence (c1(3),j1)
      equivalence (c2(2),j2)
      equivalence (c3(4),j3)
      equivalence (c4(5),j4)
      equivalence (c5(6),j5)
      equivalence (c6(1),j6)
      equivalence (c7(3),j7)
      equivalence (c8(2),j8)
      equivalence (c9(2),j9)
      equivalence (i1,j1)
      equivalence (i2,j2)
      equivalence (i3,j3)
      equivalence (i4,j4)
      equivalence (i5,j5)
      equivalence (i6,j6)
      equivalence (i7,j7)
      equivalence (i8,j8)
      equivalence (i9,j9)
      equivalence (i1,i2,i3,i4,i5,i6,i7,i8,i9)
      i1=1
      call mod111()
      contains
       subroutine mod111()
      if (i1    .ne.1) write(6,*) "NG"
      if (i2    .ne.1) write(6,*) "NG"
      if (i3    .ne.1) write(6,*) "NG"
      if (i4    .ne.1) write(6,*) "NG"
      if (i5    .ne.1) write(6,*) "NG"
      if (i6    .ne.1) write(6,*) "NG"
      if (i7    .ne.1) write(6,*) "NG"
      if (i8    .ne.1) write(6,*) "NG"
      if (i9    .ne.1) write(6,*) "NG"
      if (j1    .ne.1) write(6,*) "NG"
      if (j2    .ne.1) write(6,*) "NG"
      if (j3    .ne.1) write(6,*) "NG"
      if (j4    .ne.1) write(6,*) "NG"
      if (j5    .ne.1) write(6,*) "NG"
      if (j6    .ne.1) write(6,*) "NG"
      if (j7    .ne.1) write(6,*) "NG"
      if (j8    .ne.1) write(6,*) "NG"
      if (j9    .ne.1) write(6,*) "NG"
      if (a1(1) .ne.1) write(6,*) "NG"
      if (a2(2) .ne.1) write(6,*) "NG"
      if (a3(3) .ne.1) write(6,*) "NG"
      if (a4(4) .ne.1) write(6,*) "NG"
      if (a5(5) .ne.1) write(6,*) "NG"
      if (a6(6) .ne.1) write(6,*) "NG"
      if (a7(7) .ne.1) write(6,*) "NG"
      if (a8(8) .ne.1) write(6,*) "NG"
      if (a9(9) .ne.1) write(6,*) "NG"
      if (b1(9) .ne.1) write(6,*) "NG"
      if (b2(8) .ne.1) write(6,*) "NG"
      if (b3(7) .ne.1) write(6,*) "NG"
      if (b4(6) .ne.1) write(6,*) "NG"
      if (b5(5) .ne.1) write(6,*) "NG"
      if (b6(4) .ne.1) write(6,*) "NG"
      if (b7(3) .ne.1) write(6,*) "NG"
      if (b8(2) .ne.1) write(6,*) "NG"
      if (b9(1) .ne.1) write(6,*) "NG"
      if (c1(3) .ne.1) write(6,*) "NG"
      if (c2(2) .ne.1) write(6,*) "NG"
      if (c3(4) .ne.1) write(6,*) "NG"
      if (c4(5) .ne.1) write(6,*) "NG"
      if (c5(6) .ne.1) write(6,*) "NG"
      if (c6(1) .ne.1) write(6,*) "NG"
      if (c7(3) .ne.1) write(6,*) "NG"
      if (c8(2) .ne.1) write(6,*) "NG"
      if (c9(2) .ne.1) write(6,*) "NG"
       end subroutine
       end subroutine
      end
      subroutine test01()
      use mod1
      call mod_sub()
      end

      module mod2
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer,dimension(10) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
      integer,dimension(10,10) :: x1,x2,x3,x4,x5
      integer i1,i2,i3,i4,i5,i6,i7,i8,i9,i10
      equivalence (a1(1),i10)
      equivalence (a2(2),i9)
      equivalence (a3(3),i8)
      equivalence (a4(4),i7)
      equivalence (a5(5),i6)
      equivalence (a6(6),i5)
      equivalence (a7(7),i4)
      equivalence (a8(8),i3)
      equivalence (a9(9),i2)
      equivalence (a10(10),i1)
      equivalence (i1,x1(10,1))
      equivalence (i2,x1(10,2))
      equivalence (i3,x1(10,3))
      equivalence (i4,x1(10,4))
      equivalence (i5,x1(10,5))
      equivalence (i6,x1(10,6))
      equivalence (i7,x1(10,7))
      equivalence (i8,x1(10,8))
      equivalence (i9,x1(10,9))
      equivalence (i10,x1(10,10))
      equivalence (x5(8,8),x1(10,1))
      equivalence (x4(8,8),x5(8,8))
      equivalence (x3(8,8),x4(8,8))
      equivalence (x2(10,1),x3(8,8))
      i1 =1
      i2 =2
      i3 =3
      i4 =4
      i5 =5
      i6 =6
      i7 =7
      i8 =8
      i9 =9
      i10=10
      do i=1,10
      if (x1(10,i).ne.i) write(6,*) "NG"
      end do
      end subroutine
      end
      subroutine test02()
      use mod2
      call mod_sub()
      end subroutine
