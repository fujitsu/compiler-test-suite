      call sub1()
      call sub2()
      call sub3()
      print *,'pass'
      end
      module mod 
        integer*1  ::i1 = 1
        integer*2  ::i2 = 1
        integer*4  ::i4 = 1
        integer*8  ::i8 = 1
        real*4     ::r4 = 1
        real*8     ::r8 = 1
        real*16    ::r16 = 1
        complex*8  ::c8 = 1
        complex*16 ::c16 = 1
        complex*32 ::c32 = 1
        logical*1  ::l1 = .true.
        logical*4  ::l4 = .true.
        character  ::cha = 'a'
      end
      subroutine sub1()
      use mod   
      integer aaa(10)
      call ss01(kind(i1))                               
      call ss02(kind(i2))                               
      call ss03(kind(i4))                               
      call ss04(kind(i8))                               
      call ss05(kind(r4))                               
      call ss06(kind(r8))                               
      call ss07(kind(r16))                               
      call ss08(kind(c8))                               
      call ss09(kind(c16))                               
      call ss10(kind(c32))                               
      call ss11(kind(l1))                               
      call ss12(kind(l4))                               
      call ss13(kind(cha))                               
      call ss03(kind(aaa))                               
      call ss01(kind(-(/i1/)))                               
      call ss02(kind(-(/i2/)))                               
      call ss03(kind(-(/i4/)))                               
      call ss04(kind(-(/i8/)))                               
      call ss05(kind(-(/r4/)))                               
      call ss06(kind(-(/r8/)))                               
      call ss07(kind(-(/r16/)))                               
      call ss08(kind(-(/c8/)))                               
      call ss09(kind(-(/c16/)))                               
      call ss10(kind(-(/c32/)))                               
      call ss11(kind(.not.(/l1/)))                               
      call ss12(kind(.not.(/l4/)))                               
      call ss13(kind(''//(/cha/)))                               
      call ss01(kind((/i1/)))                               
      call ss02(kind((/i2/)))                               
      call ss03(kind((/i4/)))                               
      call ss04(kind((/i8/)))                               
      call ss05(kind((/r4/)))                               
      call ss06(kind((/r8/)))                               
      call ss07(kind((/r16/)))                               
      call ss08(kind((/c8/)))                               
      call ss09(kind((/c16/)))                               
      call ss10(kind((/c32/)))                               
      call ss11(kind((/l1/)))                               
      call ss12(kind((/l4/)))                               
      call ss13(kind((/cha/)))                               
      call ss01(kind(i1+i1))                               
      call ss02(kind(i2+i2))                               
      call ss03(kind(i4+i4))                               
      call ss04(kind(i8+i8))                               
      call ss05(kind(r4+r4))                               
      call ss06(kind(r8+r8))                               
      call ss07(kind(r16+r16))                               
      call ss08(kind(c8+c8))                               
      call ss09(kind(c16+c16))                               
      call ss10(kind(c32+c32))                               
      call ss11(kind(l1.eqv.l1))                               
      call ss12(kind(l4.eqv.l4))                               
      call ss13(kind(cha//''))                               
      contains
       subroutine ss01(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
       subroutine ss02(i)
       integer*4  i
       if (i.ne.2) print *,"fail"
       end subroutine
       subroutine ss03(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss04(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss05(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss06(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss07(i)
       integer*4  i
       if (i.ne.16) print *,"fail"
       end subroutine
       subroutine ss08(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss09(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss10(i)
       integer*4  i
       if (i.ne.16) print *,"fail"
       end subroutine
       subroutine ss11(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
       subroutine ss12(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss13(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
      end
      module mod1
       save
        type ty1 
        integer*1  ::i1
        integer*2  ::i2
        integer*4  ::i4
        integer*8  ::i8
        real*4     ::r4
        real*8     ::r8
        real*16    ::r16
        complex*8  ::c8
        complex*16 ::c16
        complex*32 ::c32
        logical*1  ::l1
        logical*4  ::l4
        character  ::cha
        end type 
        type (ty1) :: str = ty1(1,1,1,1,1,1,1,1,1,1,.true.,.true.,'a')
      end
      subroutine sub2()
      use mod1   
      integer aaa(10)
      call ss01(kind(str%i1))                               
      call ss02(kind(str%i2))                               
      call ss03(kind(str%i4))                               
      call ss04(kind(str%i8))                               
      call ss05(kind(str%r4))                               
      call ss06(kind(str%r8))                               
      call ss07(kind(str%r16))                               
      call ss08(kind(str%c8))                               
      call ss09(kind(str%c16))                               
      call ss10(kind(str%c32))                               
      call ss11(kind(str%l1))                               
      call ss12(kind(str%l4))                               
      call ss13(kind(str%cha))                               
      call ss03(kind(aaa))                               
      call ss01(kind(-(/str%i1/)))                               
      call ss02(kind(-(/str%i2/)))                               
      call ss03(kind(-(/str%i4/)))                               
      call ss04(kind(-(/str%i8/)))                               
      call ss05(kind(-(/str%r4/)))                               
      call ss06(kind(-(/str%r8/)))                               
      call ss07(kind(-(/str%r16/)))                               
      call ss08(kind(-(/str%c8/)))                               
      call ss09(kind(-(/str%c16/)))                               
      call ss10(kind(-(/str%c32/)))                               
      call ss11(kind(.not.(/str%l1/)))                               
      call ss12(kind(.not.(/str%l4/)))                               
      call ss13(kind(''//(/str%cha/)))                               
      call ss01(kind((/str%i1/)))                               
      call ss02(kind((/str%i2/)))                               
      call ss03(kind((/str%i4/)))                               
      call ss04(kind((/str%i8/)))                               
      call ss05(kind((/str%r4/)))                               
      call ss06(kind((/str%r8/)))                               
      call ss07(kind((/str%r16/)))                               
      call ss08(kind((/str%c8/)))                               
      call ss09(kind((/str%c16/)))                               
      call ss10(kind((/str%c32/)))                               
      call ss11(kind((/str%l1/)))                               
      call ss12(kind((/str%l4/)))                               
      call ss13(kind((/str%cha/)))                               
      call ss01(kind(str%i1+str%i1))                               
      call ss02(kind(str%i2+str%i2))                               
      call ss03(kind(str%i4+str%i4))                               
      call ss04(kind(str%i8+str%i8))                               
      call ss05(kind(str%r4+str%r4))                               
      call ss06(kind(str%r8+str%r8))                               
      call ss07(kind(str%r16+str%r16))                               
      call ss08(kind(str%c8+str%c8))                               
      call ss09(kind(str%c16+str%c16))                               
      call ss10(kind(str%c32+str%c32))                               
      call ss11(kind(str%l1.eqv.str%l1))                               
      call ss12(kind(str%l4.eqv.str%l4))                               
      call ss13(kind(str%cha//''))                               
      contains
       subroutine ss01(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
       subroutine ss02(i)
       integer*4  i
       if (i.ne.2) print *,"fail"
       end subroutine
       subroutine ss03(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss04(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss05(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss06(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss07(i)
       integer*4  i
       if (i.ne.16) print *,"fail"
       end subroutine
       subroutine ss08(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss09(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss10(i)
       integer*4  i
       if (i.ne.16) print *,"fail"
       end subroutine
       subroutine ss11(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
       subroutine ss12(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss13(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
      end
      module aaa
      contains
       function i2  () result(i)
       integer*2       i
       i=1
       end function
       function i1  () result(i)
       integer*1       i
       i=1
       end function
       function i4  () result(i)
       integer*4       i
       i=1
       end function
       function i8  () result(i)
       integer*8       i
       i=1
       end function
       function r4  () result(i)
       real*4       i
       i=1
       end function
       function r8  () result(i)
       real*8       i
       i=1
       end function
       function r16 () result(i)
       real*16      i
       i=1
       end function
       function c8  () result(i)
       complex*8       i
       i=1
       end function
       function c16 () result(i)
       complex*16      i
       i=1
       end function
       function c32 () result(i)
       complex*32      i
       i=1
       end function
       function cha () result(i)
       character       i
       i='a'
       end function
       function l4  () result(i)
       logical*4       i
       i=.true.
       end function
       function l1  () result(i)
       logical*1       i
       i=.true.
       end function
      end
      subroutine sub3()
      use aaa
      call ss01(kind(i1()))                               
      call ss02(kind(i2()))                               
      call ss03(kind(i4()))                               
      call ss04(kind(i8()))                               
      call ss05(kind(r4()))                               
      call ss06(kind(r8()))                               
      call ss07(kind(r16()))                               
      call ss08(kind(c8()))                               
      call ss09(kind(c16()))                               
      call ss10(kind(c32()))                               
      call ss11(kind(l1()))                               
      call ss12(kind(l4()))                               
      call ss13(kind(cha()))                               
      contains
       subroutine ss01(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
       subroutine ss02(i)
       integer*4  i
       if (i.ne.2) print *,"fail"
       end subroutine
       subroutine ss03(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss04(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss05(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss06(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss07(i)
       integer*4  i
       if (i.ne.16) print *,"fail"
       end subroutine
       subroutine ss08(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss09(i)
       integer*4  i
       if (i.ne.8) print *,"fail"
       end subroutine
       subroutine ss10(i)
       integer*4  i
       if (i.ne.16) print *,"fail"
       end subroutine
       subroutine ss11(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
       subroutine ss12(i)
       integer*4  i
       if (i.ne.4) print *,"fail"
       end subroutine
       subroutine ss13(i)
       integer*4  i
       if (i.ne.1) print *,"fail"
       end subroutine
      end
