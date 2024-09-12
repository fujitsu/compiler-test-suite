module typdcl
  type ddt
    integer a
  endtype
  type(ddt):: var=ddt(555)
  type(ddt),parameter:: cnt=ddt(max(555,2,59,15,-555))
end module

module operator
  use typdcl,only:ddt
  private
  public operator(.ne.)
  interface operator(/=)
    module procedure ddt_ne_
  end interface
  contains
    function ddt_ne_(a,b) result(res)
      type(ddt),intent(in)::a,b
      logical res
      if (a%a /= b%a) then
        res = .true.
      else
        res = .false.
      endif
    end function
end module

module mod1
  use typdcl
  use operator
  contains
  subroutine smod1(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod2
  use typdcl
  use operator
  private
  public var,cnt,smod2
  contains
  subroutine smod2(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod3
  use typdcl
  use operator
  private var,cnt,ddt
  contains
  subroutine smod3(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod4
  use typdcl,only:var,cnt
  use operator
  contains
  subroutine smod4(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod5
  use typdcl,only:var,cnt
  use operator
  private
  public var,cnt,smod5
  contains
  subroutine smod5(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod6
  use typdcl,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine smod6(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod7
  use typdcl,only:var,cnt,ddt
  use operator
  contains
  subroutine smod7(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod8
  use typdcl,only:var,cnt,ddt
  use operator
  private
  public var,cnt,smod8
  contains
  subroutine smod8(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod9
  use typdcl,only:var,cnt
  use operator
  private var,cnt,ddt
  contains
  subroutine smod9(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod10
  use typdcl,var=>var,cnt=>cnt,ddt=>ddt
  use operator
  contains
  subroutine smod10(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod11
  use typdcl,var=>var,cnt=>cnt,ddt=>ddt
  use operator
  private
  public var,cnt,smod11
  contains
  subroutine smod11(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod12
  use typdcl,var=>var,cnt=>cnt,ddt=>ddt
  use operator
  private var,cnt,ddt
  contains
  subroutine smod12(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module mod13
  use typdcl,v=>var,c=>cnt,d=>ddt
  use operator
  contains
  subroutine smod13(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module mod14
  use typdcl,v=>var,c=>cnt,d=>ddt
  use operator
  private
  public v,c,smod14
  contains
  subroutine smod14(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module mod15
  use typdcl,v=>var,c=>cnt,d=>ddt
  use operator
  private v,c,d
  contains
  subroutine smod15(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module bypass1
  use typdcl
  private
  public var,cnt
end module

module b1mod1
  use bypass1
  use operator
  contains
  subroutine sb1mod1(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod2
  use bypass1
  use operator
  private
  public var,cnt,sb1mod2
  contains
  subroutine sb1mod2(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod3
  use bypass1
  use operator
  private var,cnt,ddt
  contains
  subroutine sb1mod3(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod4
  use bypass1,only:var,cnt
  use operator
  contains
  subroutine sb1mod4(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod5
  use bypass1,only:var,cnt
  use operator
  private
  public var,cnt,sb1mod5
  contains
  subroutine sb1mod5(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod6
  use bypass1,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb1mod6(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod7
  use bypass1,only:var,cnt
  use operator
  contains
  subroutine sb1mod7(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod8
  use bypass1,only:var,cnt
  use operator
  private
  public var,cnt,sb1mod8
  contains
  subroutine sb1mod8(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod9
  use bypass1,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb1mod9(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod10
  use bypass1,var=>var,cnt=>cnt
  use operator
  contains
  subroutine sb1mod10(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod11
  use bypass1,var=>var,cnt=>cnt
  use operator
  private
  public var,cnt,sb1mod11
  contains
  subroutine sb1mod11(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod12
  use bypass1,var=>var,cnt=>cnt
  use operator
  private var,cnt
  contains
  subroutine sb1mod12(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b1mod13
  use bypass1,v=>var,c=>cnt
  use operator
  contains
  subroutine sb1mod13(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b1mod14
  use bypass1,v=>var,c=>cnt
  use operator
  private
  public v,c,sb1mod14
  contains
  subroutine sb1mod14(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b1mod15
  use bypass1,v=>var,c=>cnt
  use operator
  private v,c
  contains
  subroutine sb1mod15(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module bypass2
  use typdcl,only:var,cnt,ddt
  private
  public var,cnt
end module

module b2mod1
  use bypass2
  use operator
  contains
  subroutine sb2mod1(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod2
  use bypass2
  use operator
  private
  public var,cnt,sb2mod2
  contains
  subroutine sb2mod2(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod3
  use bypass2
  use operator
  private var,cnt,ddt
  contains
  subroutine sb2mod3(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod4
  use bypass2,only:var,cnt
  use operator
  contains
  subroutine sb2mod4(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod5
  use bypass2,only:var,cnt
  use operator
  private
  public var,cnt,sb2mod5
  contains
  subroutine sb2mod5(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod6
  use bypass2,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb2mod6(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod7
  use bypass2,only:var,cnt
  use operator
  contains
  subroutine sb2mod7(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod8
  use bypass2,only:var,cnt
  use operator
  private
  public var,cnt,sb2mod8
  contains
  subroutine sb2mod8(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod9
  use bypass2,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb2mod9(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod10
  use bypass2,var=>var,cnt=>cnt
  use operator
  contains
  subroutine sb2mod10(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod11
  use bypass2,var=>var,cnt=>cnt
  use operator
  private
  public var,cnt,sb2mod11
  contains
  subroutine sb2mod11(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod12
  use bypass2,var=>var,cnt=>cnt
  use operator
  private var,cnt
  contains
  subroutine sb2mod12(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b2mod13
  use bypass2,v=>var,c=>cnt
  use operator
  contains
  subroutine sb2mod13(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b2mod14
  use bypass2,v=>var,c=>cnt
  use operator
  private
  public v,c,sb2mod14
  contains
  subroutine sb2mod14(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b2mod15
  use bypass2,v=>var,c=>cnt
  use operator
  private v,c
  contains
  subroutine sb2mod15(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module bypass3
  use typdcl,only:var,cnt
  private
  public var,cnt
end module

module b3mod1
  use bypass3
  use operator
  contains
  subroutine sb3mod1(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod2
  use bypass3
  use operator
  private
  public var,cnt,sb3mod2
  contains
  subroutine sb3mod2(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod3
  use bypass3
  use operator
  private var,cnt,ddt
  contains
  subroutine sb3mod3(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod4
  use bypass3,only:var,cnt
  use operator
  contains
  subroutine sb3mod4(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod5
  use bypass3,only:var,cnt
  use operator
  private
  public var,cnt,sb3mod5
  contains
  subroutine sb3mod5(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod6
  use bypass3,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb3mod6(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod7
  use bypass3,only:var,cnt
  use operator
  contains
  subroutine sb3mod7(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod8
  use bypass3,only:var,cnt
  use operator
  private
  public var,cnt,sb3mod8
  contains
  subroutine sb3mod8(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod9
  use bypass3,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb3mod9(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod10
  use bypass3,var=>var,cnt=>cnt
  use operator
  contains
  subroutine sb3mod10(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod11
  use bypass3,var=>var,cnt=>cnt
  use operator
  private
  public var,cnt,sb3mod11
  contains
  subroutine sb3mod11(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod12
  use bypass3,var=>var,cnt=>cnt
  use operator
  private var,cnt
  contains
  subroutine sb3mod12(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b3mod13
  use bypass3,v=>var,c=>cnt
  use operator
  contains
  subroutine sb3mod13(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b3mod14
  use bypass3,v=>var,c=>cnt
  use operator
  private
  public v,c,sb3mod14
  contains
  subroutine sb3mod14(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b3mod15
  use bypass3,v=>var,c=>cnt
  use operator
  private v,c
  contains
  subroutine sb3mod15(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module bypass4
  use typdcl,var=>var,cnt=>cnt,ddt=>ddt
  private
  public var,cnt
end module

module b4mod1
  use bypass4
  use operator
  contains
  subroutine sb4mod1(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod2
  use bypass4
  use operator
  private
  public var,cnt,sb4mod2
  contains
  subroutine sb4mod2(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod3
  use bypass4
  use operator
  private var,cnt,ddt
  contains
  subroutine sb4mod3(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod4
  use bypass4,only:var,cnt
  use operator
  contains
  subroutine sb4mod4(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod5
  use bypass4,only:var,cnt
  use operator
  private
  public var,cnt,sb4mod5
  contains
  subroutine sb4mod5(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod6
  use bypass4,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb4mod6(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod7
  use bypass4,only:var,cnt
  use operator
  contains
  subroutine sb4mod7(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod8
  use bypass4,only:var,cnt
  use operator
  private
  public var,cnt,sb4mod8
  contains
  subroutine sb4mod8(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod9
  use bypass4,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb4mod9(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod10
  use bypass4,var=>var,cnt=>cnt
  use operator
  contains
  subroutine sb4mod10(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod11
  use bypass4,var=>var,cnt=>cnt
  use operator
  private
  public var,cnt,sb4mod11
  contains
  subroutine sb4mod11(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod12
  use bypass4,var=>var,cnt=>cnt
  use operator
  private var,cnt
  contains
  subroutine sb4mod12(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b4mod13
  use bypass4,v=>var,c=>cnt
  use operator
  contains
  subroutine sb4mod13(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b4mod14
  use bypass4,v=>var,c=>cnt
  use operator
  private
  public v,c,sb4mod14
  contains
  subroutine sb4mod14(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b4mod15
  use bypass4,v=>var,c=>cnt
  use operator
  private v,c
  contains
  subroutine sb4mod15(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module bypass5
  use bypass1
  use bypass2
  use bypass3
  use bypass4
  private
  public var,cnt
end module

module b5mod1
  use bypass5
  use operator
  contains
  subroutine sb5mod1(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod2
  use bypass5
  use operator
  private
  public var,cnt,sb5mod2
  contains
  subroutine sb5mod2(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod3
  use bypass5
  use operator
  private var,cnt,ddt
  contains
  subroutine sb5mod3(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod4
  use bypass5,only:var,cnt
  use operator
  contains
  subroutine sb5mod4(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod5
  use bypass5,only:var,cnt
  use operator
  private
  public var,cnt,sb5mod5
  contains
  subroutine sb5mod5(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod6
  use bypass5,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb5mod6(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod7
  use bypass5,only:var,cnt
  use operator
  contains
  subroutine sb5mod7(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod8
  use bypass5,only:var,cnt
  use operator
  private
  public var,cnt,sb5mod8
  contains
  subroutine sb5mod8(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod9
  use bypass5,only:var,cnt
  use operator
  private var,cnt
  contains
  subroutine sb5mod9(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod10
  use bypass5,var=>var,cnt=>cnt
  use operator
  contains
  subroutine sb5mod10(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod11
  use bypass5,var=>var,cnt=>cnt
  use operator
  private
  public var,cnt,sb5mod11
  contains
  subroutine sb5mod11(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod12
  use bypass5,var=>var,cnt=>cnt
  use operator
  private var,cnt
  contains
  subroutine sb5mod12(error)
    integer error
    if (var /= cnt) error = error+1
  end subroutine
end module

module b5mod13
  use bypass5,v=>var,c=>cnt
  use operator
  contains
  subroutine sb5mod13(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b5mod14
  use bypass5,v=>var,c=>cnt
  use operator
  private
  public v,c,sb5mod14
  contains
  subroutine sb5mod14(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module b5mod15
  use bypass5,v=>var,c=>cnt
  use operator
  private v,c
  contains
  subroutine sb5mod15(error)
    integer error
    if (v /= c) error = error+1
  end subroutine
end module

module modall
  use mod1,only:smod1
  use mod2,only:smod2
  use mod3,only:smod3
  use mod4,only:smod4
  use mod5,only:smod5
  use mod6,only:smod6
  use mod7,only:smod7
  use mod8,only:smod8
  use mod9,only:smod9
  use mod10,only:smod10
  use mod11,only:smod11
  use mod12,only:smod12
  use mod13,only:smod13
  use mod14,only:smod14
  use mod15,only:smod15

  use b1mod1,only:sb1mod1
  use b1mod2,only:sb1mod2
  use b1mod3,only:sb1mod3
  use b1mod4,only:sb1mod4
  use b1mod5,only:sb1mod5
  use b1mod6,only:sb1mod6
  use b1mod7,only:sb1mod7
  use b1mod8,only:sb1mod8
  use b1mod9,only:sb1mod9
  use b1mod10,only:sb1mod10
  use b1mod11,only:sb1mod11
  use b1mod12,only:sb1mod12
  use b1mod13,only:sb1mod13
  use b1mod14,only:sb1mod14
  use b1mod15,only:sb1mod15

  use b2mod1,only:sb2mod1
  use b2mod2,only:sb2mod2
  use b2mod3,only:sb2mod3
  use b2mod4,only:sb2mod4
  use b2mod5,only:sb2mod5
  use b2mod6,only:sb2mod6
  use b2mod7,only:sb2mod7
  use b2mod8,only:sb2mod8
  use b2mod9,only:sb2mod9
  use b2mod10,only:sb2mod10
  use b2mod11,only:sb2mod11
  use b2mod12,only:sb2mod12
  use b2mod13,only:sb2mod13
  use b2mod14,only:sb2mod14
  use b2mod15,only:sb2mod15

  use b3mod1,only:sb3mod1
  use b3mod2,only:sb3mod2
  use b3mod3,only:sb3mod3
  use b3mod4,only:sb3mod4
  use b3mod5,only:sb3mod5
  use b3mod6,only:sb3mod6
  use b3mod7,only:sb3mod7
  use b3mod8,only:sb3mod8
  use b3mod9,only:sb3mod9
  use b3mod10,only:sb3mod10
  use b3mod11,only:sb3mod11
  use b3mod12,only:sb3mod12
  use b3mod13,only:sb3mod13
  use b3mod14,only:sb3mod14
  use b3mod15,only:sb3mod15

  use b4mod1,only:sb4mod1
  use b4mod2,only:sb4mod2
  use b4mod3,only:sb4mod3
  use b4mod4,only:sb4mod4
  use b4mod5,only:sb4mod5
  use b4mod6,only:sb4mod6
  use b4mod7,only:sb4mod7
  use b4mod8,only:sb4mod8
  use b4mod9,only:sb4mod9
  use b4mod10,only:sb4mod10
  use b4mod11,only:sb4mod11
  use b4mod12,only:sb4mod12
  use b4mod13,only:sb4mod13
  use b4mod14,only:sb4mod14
  use b4mod15,only:sb4mod15

  use b5mod1,only:sb5mod1
  use b5mod2,only:sb5mod2
  use b5mod3,only:sb5mod3
  use b5mod4,only:sb5mod4
  use b5mod5,only:sb5mod5
  use b5mod6,only:sb5mod6
  use b5mod7,only:sb5mod7
  use b5mod8,only:sb5mod8
  use b5mod9,only:sb5mod9
  use b5mod10,only:sb5mod10
  use b5mod11,only:sb5mod11
  use b5mod12,only:sb5mod12
  use b5mod13,only:sb5mod13
  use b5mod14,only:sb5mod14
  use b5mod15,only:sb5mod15
end module

program sned1001
  use modall

  integer error
  error = 0

  call smod1(error)
  call smod2(error)
  call smod3(error)
  call smod4(error)
  call smod5(error)
  call smod6(error)
  call smod7(error)
  call smod8(error)
  call smod9(error)
  call smod10(error)
  call smod11(error)
  call smod12(error)
  call smod13(error)
  call smod14(error)
  call smod15(error)

  call sb1mod1(error)
  call sb1mod2(error)
  call sb1mod3(error)
  call sb1mod4(error)
  call sb1mod5(error)
  call sb1mod6(error)
  call sb1mod7(error)
  call sb1mod8(error)
  call sb1mod9(error)
  call sb1mod10(error)
  call sb1mod11(error)
  call sb1mod12(error)
  call sb1mod13(error)
  call sb1mod14(error)
  call sb1mod15(error)

  call sb2mod1(error)
  call sb2mod2(error)
  call sb2mod3(error)
  call sb2mod4(error)
  call sb2mod5(error)
  call sb2mod6(error)
  call sb2mod7(error)
  call sb2mod8(error)
  call sb2mod9(error)
  call sb2mod10(error)
  call sb2mod11(error)
  call sb2mod12(error)
  call sb2mod13(error)
  call sb2mod14(error)
  call sb2mod15(error)

  call sb3mod1(error)
  call sb3mod2(error)
  call sb3mod3(error)
  call sb3mod4(error)
  call sb3mod5(error)
  call sb3mod6(error)
  call sb3mod7(error)
  call sb3mod8(error)
  call sb3mod9(error)
  call sb3mod10(error)
  call sb3mod11(error)
  call sb3mod12(error)
  call sb3mod13(error)
  call sb3mod14(error)
  call sb3mod15(error)

  call sb4mod1(error)
  call sb4mod2(error)
  call sb4mod3(error)
  call sb4mod4(error)
  call sb4mod5(error)
  call sb4mod6(error)
  call sb4mod7(error)
  call sb4mod8(error)
  call sb4mod9(error)
  call sb4mod10(error)
  call sb4mod11(error)
  call sb4mod12(error)
  call sb4mod13(error)
  call sb4mod14(error)
  call sb4mod15(error)

  call sb5mod1(error)
  call sb5mod2(error)
  call sb5mod3(error)
  call sb5mod4(error)
  call sb5mod5(error)
  call sb5mod6(error)
  call sb5mod7(error)
  call sb5mod8(error)
  call sb5mod9(error)
  call sb5mod10(error)
  call sb5mod11(error)
  call sb5mod12(error)
  call sb5mod13(error)
  call sb5mod14(error)
  call sb5mod15(error)

  if (error == 0) then
    print *,'*** pass ***'
  else
    print *,'--- NG ---',error
  endif

end program
