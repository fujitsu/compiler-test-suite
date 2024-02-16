logical(kind=1) function compareR4(x,y)
real(kind=4) x,y
integer(kind=4) newx,newy
newx = int(x*100000._4, kind=4)
newy = int(y*100000._4, kind=4)
if (newx == newy) then
  compareR4 = .true.
else 
  compareR4 = .false.
endif
end function

program main
real(kind=4) x
integer(kind=4) i
integer(kind=4) R4pow00I8,R4pow10I8,R4pow20I8,R4pow30I8,R4pow40I8
integer(kind=4) R4pow50I8,R4pow60I8,R4pow70I8,R4pow80I8,R4pow90I8

x = 0.08_4
i = 0
i=i+R4pow00I8(x)
i=i+R4pow10I8(x)
i=i+R4pow20I8(x)
i=i+R4pow30I8(x)
i=i+R4pow40I8(x)
i=i+R4pow50I8(x)
i=i+R4pow60I8(x)
i=i+R4pow70I8(x)
i=i+R4pow80I8(x)
i=i+R4pow90I8(x)
if (i == 10) then
  print *,"ok"
else
  print *,"ng: i=", i
endif
end program

integer(kind=4) function R4pow00I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**0_8, 1.0_4)) then
  R4pow00I8 = 1
else
  print *,"R4pow00I8: ng"
  R4pow00I8 = 0
endif
end function

integer(kind=4) function R4pow10I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**1_8, x)) then
  R4pow10I8 = 1
else
  print *,"R4pow10I8: ng"
  R4pow10I8 = 0
endif
end function

integer(kind=4) function R4pow20I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**2_8, x*x)) then
  R4pow20I8 = 1
else
  print *,"R4pow20I8: ng"
  R4pow20I8 = 0
endif
end function

integer(kind=4) function R4pow30I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**3_8, (x*x)*x)) then
  R4pow30I8 = 1
else
  print *,"R4pow30I8: ng"
  R4pow30I8 = 0
endif
end function

integer(kind=4) function R4pow40I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**4_8, (x*x)*(x*x))) then
  R4pow40I8 = 1
else
  print *,"R4pow40I8: ng"
  R4pow40I8 = 0
endif
end function

integer(kind=4) function R4pow50I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**5_8, (x*x)*((x*x)*x))) then
  R4pow50I8 = 1
else
  print *,"R4pow50I8: ng"
  R4pow50I8 = 0
endif
end function

integer(kind=4) function R4pow60I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**6_8, ((x*x)*x)*((x*x)*x))) then
  R4pow60I8 = 1
else
  print *,"R4pow60I8: ng"
  R4pow60I8 = 0
endif
end function

integer(kind=4) function R4pow70I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**7_8, ((x*x)*(x*x))*((x*x)*x))) then
  R4pow70I8 = 1
else
  print *,"R4pow70I8: ng"
  R4pow70I8 = 0
endif
end function

integer(kind=4) function R4pow80I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**8_8, ((x*x)*(x*x))*((x*x)*(x*x)))) then
  R4pow80I8 = 1
else
  print *,"R4pow80I8: ng"
  R4pow80I8 = 0
endif
end function

integer(kind=4) function R4pow90I8(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**9_8, (((x*x)*((x*x)*x))*((x*x)*(x*x))))) then
  R4pow90I8 = 1
else
  print *,"R4pow90I8: ng"
  R4pow90I8 = 0
endif
end function
