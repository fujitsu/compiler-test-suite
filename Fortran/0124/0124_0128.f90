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
integer(kind=4) R8pow00I4,R8pow10I4,R8pow20I4,R8pow30I4,R8pow40I4
integer(kind=4) R8pow50I4,R8pow60I4,R8pow70I4,R8pow80I4,R8pow90I4

x = 0.9_8
i = 0
i=i+R8pow00I4(x)
i=i+R8pow10I4(x)
i=i+R8pow20I4(x)
i=i+R8pow30I4(x)
i=i+R8pow40I4(x)
i=i+R8pow50I4(x)
i=i+R8pow60I4(x)
i=i+R8pow70I4(x)
i=i+R8pow80I4(x)
i=i+R8pow90I4(x)
if (i == 10) then
  print *,"ok"
else
  print *,"ng: i=", i
endif
end program

integer(kind=4) function R8pow00I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**0, 1.0_8)) then
  R8pow00I4 = 1
else
  print *,"R8pow00I4: ng"
  R8pow00I4 = 0
endif
end function

integer(kind=4) function R8pow10I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**1, x)) then
  R8pow10I4 = 1
else
  print *,"R8pow10I4: ng"
  R8pow10I4 = 0
endif
end function

integer(kind=4) function R8pow20I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**2, x*x)) then
  R8pow20I4 = 1
else
  print *,"R8pow20I4: ng"
  R8pow20I4 = 0
endif
end function

integer(kind=4) function R8pow30I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**3, (x*x)*x)) then
  R8pow30I4 = 1
else
  print *,"R8pow30I4: ng"
  R8pow30I4 = 0
endif
end function

integer(kind=4) function R8pow40I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**4, (x*x)*(x*x))) then
  R8pow40I4 = 1
else
  print *,"R8pow40I4: ng"
  R8pow40I4 = 0
endif
end function

integer(kind=4) function R8pow50I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**5, (x*x)*((x*x)*x))) then
  R8pow50I4 = 1
else
  print *,"R8pow50I4: ng"
  R8pow50I4 = 0
endif
end function

integer(kind=4) function R8pow60I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**6, ((x*x)*x)*((x*x)*x))) then
  R8pow60I4 = 1
else
  print *,"R8pow60I4: ng"
  R8pow60I4 = 0
endif
end function

integer(kind=4) function R8pow70I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**7, ((x*x)*(x*x))*((x*x)*x))) then
  R8pow70I4 = 1
else
  print *,"R8pow70I4: ng"
  R8pow70I4 = 0
endif
end function

integer(kind=4) function R8pow80I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**8, ((x*x)*(x*x))*((x*x)*(x*x)))) then
  R8pow80I4 = 1
else
  print *,"R8pow80I4: ng"
  R8pow80I4 = 0
endif
end function

integer(kind=4) function R8pow90I4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**9, (((x*x)*((x*x)*x))*((x*x)*(x*x))))) then
  R8pow90I4 = 1
else
  print *,"R8pow90I4: ng"
  R8pow90I4 = 0
endif
end function
