      program main
      call sub1()
      print *,'pass'
      end

      module aa2
      type ty2
       integer i
      end type
      interface operator(+)
       module procedure ifun1
       module procedure ifun2
       module procedure ifun3
       module procedure ifun4
      end interface
      contains
       function ifun2(i)
        character,intent(in) :: i(10)
        if (i(1).eq.i(1)) jj=1
        ifun2=123
       end function
       function cfun()
        character cfun
        cfun='a'
       end function
       function ifun(i)
        logical,intent(in) :: i
        entry ifun4(i)
        if (i.eqv.i) jj=1
        ifun4=123
       end function
       function ifun1(i)
        character,intent(in) :: i
        if (i.eq.i) jj=1
        ifun1=123
       end function
       function ifun3(i)
        type (ty2),intent(in) :: i
        if (i%i.eq.i%i) jj=1
        ifun3=123
       end function
      subroutine sub()
      character*1 cha,chb(10),chc,chd(10)
      character*1 arg,cfunc
      parameter (chc='a',chd=(/('a',i=1,10)/) )
      type ty1
        character a
        character b(10)
      end type
      type (ty1) :: str
      type (ty2) :: str2
      ifunc(arg)=+arg
      cfunc()='a'
      ians=+.true.
      if (ians.ne.123) print *,"fail"
      ians=+ty2(1)
      if (ians.ne.123) print *,"fail"
      ians=+str2
      if (ians.ne.123) print *,"fail"
      ians=+cha
      if (ians.ne.123) print *,"fail"
      ians=+chc
      if (ians.ne.123) print *,"fail"
      ians=+cha(1:1)
      if (ians.ne.123) print *,"fail"
      ians=+chc(1:1)
      if (ians.ne.123) print *,"fail"
      ians=+'a'
      if (ians.ne.123) print *,"fail"
      ians=+'a'(1:1)
      if (ians.ne.123) print *,"fail"
      ians=+chb
      if (ians.ne.123) print *,"fail"
      ians=+chd
      if (ians.ne.123) print *,"fail"
      ians=+chb(1)
      if (ians.ne.123) print *,"fail"
      ians=+chd(1)
      if (ians.ne.123) print *,"fail"
      ians=+chb(1:10)
      if (ians.ne.123) print *,"fail"
      ians=+chd(1:10)
      if (ians.ne.123) print *,"fail"
      ians=+chb(1:10)(1:1)
      if (ians.ne.123) print *,"fail"
      ians=+chd(1:10)(1:1)
      if (ians.ne.123) print *,"fail"
      ians=+(/('a',i=1,10)/)
      if (ians.ne.123) print *,"fail"
      ians=+(/'a','a',('a',i=1,8)/)
      if (ians.ne.123) print *,"fail"
      ians=+(/chb/)
      if (ians.ne.123) print *,"fail"
      ians=+(/chc,chc,chc,chc,chc,chc,chc,chc,chc,chc/)
      if (ians.ne.123) print *,"fail"
      ians=+(/chd/)
      ians=+(/((/'a'/),i=1,10)/)
      if (ians.ne.123) print *,"fail"
      ians=+(/(/'a'/),'a',('a',i=1,8)/)
      if (ians.ne.123) print *,"fail"
      ians=+(/(/('a',i=1,1)/),'a',('a',i=1,8)/)
      if (ians.ne.123) print *,"fail"
      ians=+str%a
      if (ians.ne.123) print *,"fail"
      ians=+str%b
      if (ians.ne.123) print *,"fail"
      ians=+(str%b//'a')
      if (ians.ne.123) print *,"fail"
      ians=+str%b(1:10)
      if (ians.ne.123) print *,"fail"
      ians=+cfun()
      if (ians.ne.123) print *,"fail"
      ians=ifunc('a')
      if (ians.ne.123) print *,"fail"
      end  subroutine
      end module

      subroutine sub1()
      use aa2
      call sub()
      end
