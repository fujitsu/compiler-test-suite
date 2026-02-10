      call sub1()
      call sub2()
      call sub3()
      print *,'pass'
      end

      module mod1
      integer,dimension(10,10)::a,b,c,d
      integer,dimension(10,10),parameter::ans=reshape(
     -    (/(i,i=1,100)/),(/10,10/))
      integer,dimension(10),parameter::pa=(/(i,i=1,10)/)
      data a((/pa/),pa) /100*1/
      data b((/(pa,i=1,1)/),1:10:1) /100*2/
      data c /100*3/
      data ((d(j,i),i=1,ubound(pa,dim=1)),j=1,10) /100*4/
      end

      subroutine sub1()
      use mod1
      do i=1,10
      do j=1,10
        if (a(i,j).ne.1) print *,'fail'
        if (b(i,j).ne.2) print *,'fail'
        if (c(i,j).ne.3) print *,'fail'
        if (d(i,j).ne.4) print *,'fail'
      end do
      end do
      end

      module mod2
      integer*1 i1(1)
      integer*4 i4(10)
      equivalence (i1,i4)
      character ch1,ch2*10,ch3*20
      common /com2/ ch1,ch2
      equivalence (ch2,ch3)
      contains
       subroutine sub()
       ch1='1'
       ch2='234567890a'
       ch3(11:20)='bcdefghijk'
       end subroutine
      end

      subroutine sub2()
      use mod2
      pointer (ip,iaa)
      character*21 iaa
      n = 5
      i1(n)=1
      if (i4(2) .ne.1) print *,'fail'
      call sub()
      ip=loc(ch1)
      if (iaa.ne.'1234567890abcdefghijk') print *,'fail'
      if (iaa.ne.ch1//ch2//ch3(11:20)) print *,'fail'
      end

      module mod3
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
      contains
      subroutine subb()
      a=(/(i,i=1,10)/)
      if (b(1).ne.1) print *,'fail'
      if (b(2).ne.j) print *,'fail'
      end subroutine
      end
      subroutine sub3()
      use mod3
      call subb()
      end
