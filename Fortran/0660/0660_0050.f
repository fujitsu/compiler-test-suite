      call ss1()
      call ss2()
      print *,' *** pass ***'
      end
      subroutine ss1()
      integer,dimension(5,-2:2) :: a
      if (size(a(2:5,-1:1),dim=2).ne.3) print *,"fail"
      if (size(a(2:5,-1:1)).ne.12) print *,"fail"
      end
      subroutine ss2
      integer(kind=1)  i11(5)
      integer(kind=2)  i21(5)
      integer(kind=4)  i41(5,5,5,5,5,5,5)
      integer(kind=8)  i81(5,5,5,5,5,5,5)
      real(kind=4)   r41(-5:5,-10:10)
      real(kind=8)   r81(-5:5,-10:10)
      real(kind=16)  r161(-5:5,-10:10)
      complex(kind=4)   c41(-5:5,-10:10,-5:5)
      complex(kind=8)   c81(-5:5,-10:10,-5:5)
      complex(kind=16)  c161(-5:5,-10:10,-5:5)
      logical(kind=1)  l11(10,10,10,10)
      logical(kind=4)  l41(10,10,10,10)
      character(len=5) ch1(5,5,5,5,5)
      type aa
        real(kind=4) r
      end type
      type(aa),dimension(5,5,5,5,5,5) :: str
      if (size(i11).ne.size(i21(1:5))) print *,"fail"
      if (size(i21(2:5)).ne.size(i21(1:4))) print *,"fail"
      if (size(i41,dim=2).ne.size(i81,dim=3)) print *,"fail"
      if (size(r41).ne.size(r81)) print *,"fail"
      if (size(r161,dim=1).ne.size(r81,dim=1)) print *,"fail"
      if (size(c41,dim=1).ne.size(c81,dim=1)) print *,"fail"
      if (size(c41,dim=3).ne.size(dim=3,array=c161)) print *,"fail"
      if (size(l41,dim=3).ne.size(dim=3,array=l11)) print *,"fail"
      if (size(ch1(1,1,1:5,1,1)).ne.size(dim=3,array=ch1))
     1 print *,"fail"
      call inter_ss2(str)
      contains
        subroutine inter_ss2(strx)
        type(aa),dimension(5,5,5,5,*) :: strx
        if (size(strx,4).ne.size(strx,3)) print *,"fail"
        end subroutine
      end
