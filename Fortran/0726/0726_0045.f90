      call test01()
      print *,"pass"
      end
      subroutine test01()
      integer a(10)
      character*10 c
      c="1234567890"
      a=(/(i,i=1,10)/)
      call sub01(a)
      call sub02(a)
      call sub03(a)
      call sub11(a)
      call sub12(a)
      call sub13(a)
      call sub21(a)
      call sub22(a)
      call sub23(a)
      call sub31(a)
      call sub32(a)
      call sub33(a)
      call subx1(c)
      call suby1(c)
      call subz1(c)
      call suba1(c,10)
      call subq1(a)
      call subt1(a)
      call subt2(a)
      contains
      subroutine subt2(aa)
      integer aa(:)    
      integer, dimension(lbound(aa(:),1)+9) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine subt1(aa)
      integer aa(:)    
      integer, dimension(ubound(aa(:),1)) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine subq1(aa)
      integer aa(:)    
      integer, dimension(bit_size(aa(:))-22) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine subx1(aa)
      character*(*) aa
      integer, dimension(len(aa(1:))) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine suba1(aa,ii)
      character*(ii) aa
      integer, dimension(len(aa(:))) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine subz1(aa)
      character*(*) aa
      integer, dimension(len(aa(:10))) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine suby1(aa)
      character*(*) aa
      integer, dimension(len(aa(:))) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub31(aa)
      integer aa(:)
      integer rr
      dimension rr(size((/(aa(:),i=1,1)/)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub32(aa)
      integer aa(:)
      integer, dimension(size((/(aa(:),i=1,1)/))) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub33(aa)
      integer aa(:)
      integer rr(size((/(aa(:),i=1,1)/)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub21(aa)
      integer aa(:)
      integer rr
      dimension rr(size((/aa(:)/)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub22(aa)
      integer aa(:)
      integer, dimension(size((/aa(:)/))) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub23(aa)
      integer aa(:)
      integer rr(size((/aa(:)/)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub11(aa)
      integer aa(:)
      integer rr
      dimension rr(size(aa))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub12(aa)
      integer aa(:)
      integer, dimension(size(aa)) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub13(aa)
      integer aa(:)
      integer rr(size(aa))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub01(aa)
      integer aa(:)
      integer rr
      dimension rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub02(aa)
      integer aa(:)
      integer, dimension(size(aa(:))) :: rr
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub03(aa)
      integer aa(:)
      integer rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      end 
