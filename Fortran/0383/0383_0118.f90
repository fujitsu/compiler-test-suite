function proc01(arg1) result(ret)
  type ta
    sequence
    real a
  end type
  type(ta) :: ret 
  ret%a = arg1
end function

interface
  type(ta) function sub(xx)
    type ta
      sequence
      real a
    end type
    type yb
      integer:: i
    end type
  end function
end interface
type:: ta
  sequence
  real a
end type
procedure(sub):: proc01
type:: ty
  procedure(sub),nopass,pointer:: yb
  procedure(type(ta)),nopass,pointer:: yc
end type
type(ta):: sss
type(ty):: tb
tb%yb=>proc01
tb%yc=>proc01
sss = tb%yb(1.0)
if ( 1.0 .ne. sss%a ) print *,'fail'
sss = tb%yc(2.0)
if ( 2.0 .ne. sss%a ) print *,'fail'
print *,'pass '
end
