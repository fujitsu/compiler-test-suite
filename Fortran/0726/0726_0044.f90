      call test01()
      call test02()
      call test03()
      print *,"pass"
      end
      subroutine test01()
      integer a(10)
      a=(/(i,i=1,10)/)
      call sub01(a)
      call sub02(a)
      call sub03(a)
      call sub04(a,1,10)
      call sub05(a)
      call sub06(a)
      call sub07(a)
      call sub08(a)
      call sub09(a,1)
      call sub10(a)
      call sub11(a)
      call sub12(a)
      call sub13(a)
      contains
      subroutine sub13(aa)
      integer aa(*)
      integer rr(size(aa(:10)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub12(aa)
      integer aa(10)
      integer rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub11(aa)
      integer aa(:)
      integer rr(size(aa+1))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub10(aa)
      integer aa(:)
      integer rr(size(aa(:)+1))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub09(aa,i1)
      integer aa(:)
      integer rr(size(aa(::i1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub08(aa)
      integer aa(:)
      integer rr(size(aa(:10:1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub07(aa)
      integer aa(:)
      integer rr(size(aa(1:10:1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub01(aa)
      integer aa(:)
      integer rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub02(aa)
      integer aa(:)
      integer rr(size(aa))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub03(aa)
      integer aa(:)
      integer rr(size(aa(1:10)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub04(aa,a1,a2)
      integer aa(:),a1,a2
      integer rr(size(aa(a1:a2)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub05(aa)
      integer aa(:)
      integer rr(size(aa(::1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub06(aa)
      integer aa(:)
      integer rr(size(aa(1::1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      end subroutine

      subroutine test02()
      interface
      subroutine sub13(aa)
      integer aa(*)
      integer rr(size(aa(:10)))
      end subroutine
      subroutine sub12(aa)
      integer aa(10)
      integer rr(size(aa(:)))
      end subroutine
      subroutine sub11(aa)
      integer aa(:)
      integer rr(size(aa+1))
      end subroutine
      subroutine sub10(aa)
      integer aa(:)
      integer rr(size(aa(:)+1))
      end subroutine
      subroutine sub09(aa,i1)
      integer aa(:)
      integer rr(size(aa(::i1)))
      end subroutine
      subroutine sub08(aa)
      integer aa(:)
      integer rr(size(aa(:10:1)))
      end subroutine
      subroutine sub07(aa)
      integer aa(:)
      integer rr(size(aa(1:10:1)))
      end subroutine
      subroutine sub01(aa)
      integer aa(:)
      integer rr(size(aa(:)))
      end subroutine
      subroutine sub02(aa)
      integer aa(:)
      integer rr(size(aa))
      end subroutine
      subroutine sub03(aa)
      integer aa(:)
      integer rr(size(aa(1:10)))
      end subroutine
      subroutine sub04(aa,a1,a2)
      integer aa(:),a1,a2
      integer rr(size(aa(a1:a2)))
      end subroutine
      subroutine sub05(aa)
      integer aa(:)
      integer rr(size(aa(::1)))
      end subroutine
      subroutine sub06(aa)
      integer aa(:)
      integer rr(size(aa(1::1)))
      end subroutine
      end interface
      integer a(10)
      a=(/(i,i=1,10)/)
      call sub01(a)
      call sub02(a)
      call sub03(a)
      call sub04(a,1,10)
      call sub05(a)
      call sub06(a)
      call sub07(a)
      call sub08(a)
      call sub09(a,1)
      call sub10(a)
      call sub11(a)
      call sub12(a)
      call sub13(a)
      end subroutine
      subroutine sub13(aa)
      integer aa(*)
      integer rr(size(aa(:10)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub12(aa)
      integer aa(10)
      integer rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub11(aa)
      integer aa(:)
      integer rr(size(aa+1))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub10(aa)
      integer aa(:)
      integer rr(size(aa(:)+1))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub09(aa,i1)
      integer aa(:)
      integer rr(size(aa(::i1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub08(aa)
      integer aa(:)
      integer rr(size(aa(:10:1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub07(aa)
      integer aa(:)
      integer rr(size(aa(1:10:1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub01(aa)
      integer aa(:)
      integer rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub02(aa)
      integer aa(:)
      integer rr(size(aa))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub03(aa)
      integer aa(:)
      integer rr(size(aa(1:10)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub04(aa,a1,a2)
      integer aa(:),a1,a2
      integer rr(size(aa(a1:a2)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub05(aa)
      integer aa(:)
      integer rr(size(aa(::1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub06(aa)
      integer aa(:)
      integer rr(size(aa(1::1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine

      module mod3
      contains
      subroutine sub13(aa)
      integer aa(*)
      integer rr(size(aa(:10)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub12(aa)
      integer aa(10)
      integer rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub11(aa)
      integer aa(:)
      integer rr(size(aa+1))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub10(aa)
      integer aa(:)
      integer rr(size(aa(:)+1))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub09(aa,i1)
      integer aa(:)
      integer rr(size(aa(::i1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub08(aa)
      integer aa(:)
      integer rr(size(aa(:10:1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub07(aa)
      integer aa(:)
      integer rr(size(aa(1:10:1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub01(aa)
      integer aa(:)
      integer rr(size(aa(:)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub02(aa)
      integer aa(:)
      integer rr(size(aa))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub03(aa)
      integer aa(:)
      integer rr(size(aa(1:10)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub04(aa,a1,a2)
      integer aa(:),a1,a2
      integer rr(size(aa(a1:a2)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub05(aa)
      integer aa(:)
      integer rr(size(aa(::1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      subroutine sub06(aa)
      integer aa(:)
      integer rr(size(aa(1::1)))
      if (size(rr).ne.10) write(6,*) "NG" ; end subroutine
      end 
      subroutine test03()
      use mod3
      integer a(10)
      a=(/(i,i=1,10)/)
      call sub01(a)
      call sub02(a)
      call sub03(a)
      call sub04(a,1,10)
      call sub05(a)
      call sub06(a)
      call sub07(a)
      call sub08(a)
      call sub09(a,1)
      call sub10(a)
      call sub11(a)
      call sub12(a)
      call sub13(a)
      end
