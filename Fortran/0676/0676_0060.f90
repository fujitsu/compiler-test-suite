real(kind=8) function sa2m01(a)
real(kind=8) :: a
sa2m01 = (8.0_8 - a) + a
end function

real(kind=8) function sa2m02(a,b)
real(kind=8) :: a,b
sa2m02 = (b - a) + a
end function

real(kind=8) function sa2m03(a)
real(kind=8) :: a
sa2m03 = a + (8.0_8 - a)
end function

real(kind=8) function sa2m04(a,b)
real(kind=8) :: a,b
sa2m04 = a + (b - a)
end function

real(kind=8) function sa2m05(a)
real(kind=8) :: a
sa2m05 = (-a + 8.0_8) + a
end function

real(kind=8) function sa2m06(a,b)
real(kind=8) :: a,b
sa2m06 = (-a + b) + a
end function

real(kind=8) function sa2m07(a)
real(kind=8) :: a
sa2m07 = a + (-a + 8.0_8)
end function

real(kind=8) function sa2m08(a,b)
real(kind=8) :: a,b
sa2m08 = a + (-a + b)
end function

real(kind=8) function as2m01(a)
real(kind=8) :: a
as2m01 = (8.0_8 + a) - a
end function

real(kind=8) function as2m02(a,b)
real(kind=8) :: a,b
as2m02 = (b + a) - a
end function

real(kind=8) function as2m03(a)
real(kind=8) :: a
as2m03 = - a + (8.0_8 + a)
end function

real(kind=8) function as2m04(a,b)
real(kind=8) :: a,b
as2m04 = -a + (b + a)
end function

real(kind=8) function as2m05(a)
real(kind=8) :: a
as2m05 = (a + 8.0_8) - a
end function

real(kind=8) function as2m06(a,b)
real(kind=8) :: a,b
as2m06 = (a + b) - a
end function

real(kind=8) function as2m07(a)
real(kind=8) :: a
as2m07 = - a + (a + 8.0_8)
end function

real(kind=8) function as2m08(a,b)
real(kind=8) :: a,b
as2m08 = -a + (a + b)
end function

program main
real(kind=8) :: a,b
real(kind=8) :: sa2m01,sa2m02
real(kind=8) :: sa2m03,sa2m04
real(kind=8) :: sa2m05,sa2m06
real(kind=8) :: sa2m07,sa2m08
real(kind=8) :: as2m01,as2m02
real(kind=8) :: as2m03,as2m04
real(kind=8) :: as2m05,as2m06
real(kind=8) :: as2m07,as2m08
integer(kind=8),parameter :: answer=8
a = 4.0_8
b = 8.0_8
if (int(sa2m01(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(sa2m02(a,b),kind=8) /= answer) then
   print *,"ng"
endif
if (int(sa2m03(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(sa2m04(a,b),kind=8) /= answer) then
   print *,"ng"
endif
if (int(sa2m05(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(sa2m06(a,b),kind=8) /= answer) then
   print *,"ng"
endif
if (int(sa2m07(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(sa2m08(a,b),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m01(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m02(a,b),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m03(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m04(a,b),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m05(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m06(a,b),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m07(a),kind=8) /= answer) then
   print *,"ng"
endif
if (int(as2m08(a,b),kind=8) /= answer) then
   print *,"ng"
endif
print *,"ok"
end program
