      call sub1()
      call sub2()
      call sub3()
      print *,'pass'
      end

      module mod1
      interface aa
       module procedure mmod1_sub
      end interface
      contains
      subroutine mmod1_sub()
      integer,dimension(10,10)::a,b,c,d
      integer,dimension(10,10),parameter::ans=reshape(&
 (/(i,i=1,100)/),(/10,10/))
      integer,dimension(10),parameter::pa=(/(i,i=1,10)/)
      data a((/pa/),pa) /100*1/
      data b((/(pa,i=1,1)/),1:10:1) /100*2/
      data c /100*3/
      data ((d(j,i),i=1,ubound(pa,dim=1)),j=1,10) /100*4/
      do i=1,10
      do j=1,10
        if (a(i,j).ne.1) write(6,*) "NG"
        if (b(i,j).ne.2) write(6,*) "NG"
        if (c(i,j).ne.3) write(6,*) "NG"
        if (d(i,j).ne.4) write(6,*) "NG"
      end do
      end do
      end subroutine
      end

      subroutine sub1()
      use mod1
      call mmod1_sub()
      end

      module mod2
      interface aa
       module procedure mmod2_sub
      end interface
      contains
      subroutine mmod2_sub()
      integer*1 i1(10)
      integer*4 i4(10)
      equivalence (i1,i4)
      character ch1,ch2*10,ch3*20
      common /com2/ ch1,ch2 
      equivalence (ch2,ch3)
      pointer (ip,iaa)
      character*21 iaa
      i1=0
      i1(8)=1
      if (i4(2) .eq.0) write(6,*) "NG"
      call sub()
      ip=loc(ch1)
      if (iaa.ne.'1234567890abcdefghijk') write(6,*) "NG"
      if (iaa.ne.ch1//ch2//ch3(11:20)) write(6,*) "NG"
      contains
       subroutine sub()
       ch1='1'
       ch2='234567890a'
       ch3(11:20)='bcdefghijk'
       end subroutine
      end subroutine
      end

      subroutine sub2()
      use mod2 
      call mmod2_sub()
      end

      module mod3
      interface aa
       module procedure mmod3_sub
      end interface
      contains
      subroutine mmod3_sub()
      integer a(10)
      integer b(10)
      integer c(10)
      equivalence (a,b)
      equivalence (i,j)
      equivalence (a(2),i)
      equivalence (j,b(2))
      equivalence (j,c)
      equivalence (a(3),c(2))
      equivalence (c(9),b(10))
      equivalence (k,c(8))
      equivalence (k,b(9))
      call subb()
      contains
      subroutine subb()
      a=(/(i,i=1,10)/)
      if (b(1).ne.1) write(6,*) "NG" 
      if (b(2).ne.j) write(6,*) "NG" 
      end subroutine
      end subroutine
      end
      subroutine sub3()
      use mod3
      call mmod3_sub()
      end
