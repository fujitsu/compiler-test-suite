logical(kind=1) function compareR8(x,y)
real(kind=8) x,y
integer(kind=8) newx,newy
newx = int(x*100000._8, kind=8)
newy = int(y*100000._8, kind=8)
if (newx == newy) then
  compareR8 = .true.
else 
  compareR8 = .false.
endif
end function

program main
real(kind=8) x
integer(kind=4) i
integer(kind=4) R8pow00I8,R8pow10I8,R8pow20I8,R8pow30I8,R8pow40I8
integer(kind=4) R8pow50I8,R8pow60I8,R8pow70I8,R8pow80I8,R8pow90I8

x = 1.1_8
i = 0
i=i+R8pow00I8(x)
i=i+R8pow10I8(x)
i=i+R8pow20I8(x)
i=i+R8pow30I8(x)
i=i+R8pow40I8(x)
i=i+R8pow50I8(x)
i=i+R8pow60I8(x)
i=i+R8pow70I8(x)
i=i+R8pow80I8(x)
i=i+R8pow90I8(x)
if (i == 10) then
  print *,"ok"
else
  print *,"ng: i=", i
endif
end program

integer(kind=4) function R8pow00I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**0_8, 1.0_8)) then
  R8pow00I8 = 1
else
  print *,"R8pow00I8: ng"
  R8pow00I8 = 0
endif
end function

integer(kind=4) function R8pow10I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**1_8, x)) then
  R8pow10I8 = 1
else
  print *,"R8pow10I8: ng"
  R8pow10I8 = 0
endif
end function

integer(kind=4) function R8pow20I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**2_8, x*x)) then
  R8pow20I8 = 1
else
  print *,"R8pow20I8: ng"
  R8pow20I8 = 0
endif
end function

integer(kind=4) function R8pow30I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**3_8, (x*x)*x)) then
  R8pow30I8 = 1
else
  print *,"R8pow30I8: ng"
  R8pow30I8 = 0
endif
end function

integer(kind=4) function R8pow40I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**4_8, (x*x)*(x*x))) then
  R8pow40I8 = 1
else
  print *,"R8pow40I8: ng"
  R8pow40I8 = 0
endif
end function

integer(kind=4) function R8pow50I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**5_8, (x*x)*((x*x)*x))) then
  R8pow50I8 = 1
else
  print *,"R8pow50I8: ng"
  R8pow50I8 = 0
endif
end function

integer(kind=4) function R8pow60I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**6_8, ((x*x)*x)*((x*x)*x))) then
  R8pow60I8 = 1
else
  print *,"R8pow60I8: ng"
  R8pow60I8 = 0
endif
end function

integer(kind=4) function R8pow70I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**7_8, ((x*x)*(x*x))*((x*x)*x))) then
  R8pow70I8 = 1
else
  print *,"R8pow70I8: ng"
  R8pow70I8 = 0
endif
end function

integer(kind=4) function R8pow80I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**8_8, ((x*x)*(x*x))*((x*x)*(x*x)))) then
  R8pow80I8 = 1
else
  print *,"R8pow80I8: ng"
  R8pow80I8 = 0
endif
end function

integer(kind=4) function R8pow90I8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**9_8, (((x*x)*((x*x)*x))*((x*x)*(x*x))))) then
  R8pow90I8 = 1
else
  print *,"R8pow90I8: ng"
  R8pow90I8 = 0
endif
end function
