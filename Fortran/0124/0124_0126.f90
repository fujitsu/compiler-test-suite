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
integer(kind=4) R4pow00I4,R4pow10I4,R4pow20I4,R4pow30I4,R4pow40I4
integer(kind=4) R4pow50I4,R4pow60I4,R4pow70I4,R4pow80I4,R4pow90I4

x = 0.9_4
i = 0
i=i+R4pow00I4(x)
i=i+R4pow10I4(x)
i=i+R4pow20I4(x)
i=i+R4pow30I4(x)
i=i+R4pow40I4(x)
i=i+R4pow50I4(x)
i=i+R4pow60I4(x)
i=i+R4pow70I4(x)
i=i+R4pow80I4(x)
i=i+R4pow90I4(x)
if (i == 10) then
  print *,"ok"
else
  print *,"ng: i=", i
endif
end program

integer(kind=4) function R4pow00I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**0, 1.0_4)) then
  R4pow00I4 = 1
else
  print *,"R4pow00I4: ng"
  R4pow00I4 = 0
endif
end function

integer(kind=4) function R4pow10I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**1, x)) then
  R4pow10I4 = 1
else
  print *,"R4pow10I4: ng"
  R4pow10I4 = 0
endif
end function

integer(kind=4) function R4pow20I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**2, x*x)) then
  R4pow20I4 = 1
else
  print *,"R4pow20I4: ng"
  R4pow20I4 = 0
endif
end function

integer(kind=4) function R4pow30I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**3, (x*x)*x)) then
  R4pow30I4 = 1
else
  print *,"R4pow30I4: ng"
  R4pow30I4 = 0
endif
end function

integer(kind=4) function R4pow40I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**4, (x*x)*(x*x))) then
  R4pow40I4 = 1
else
  print *,"R4pow40I4: ng"
  R4pow40I4 = 0
endif
end function

integer(kind=4) function R4pow50I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**5, (x*x)*((x*x)*x))) then
  R4pow50I4 = 1
else
  print *,"R4pow50I4: ng"
  R4pow50I4 = 0
endif
end function

integer(kind=4) function R4pow60I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**6, ((x*x)*x)*((x*x)*x))) then
  R4pow60I4 = 1
else
  print *,"R4pow60I4: ng"
  R4pow60I4 = 0
endif
end function

integer(kind=4) function R4pow70I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**7, ((x*x)*(x*x))*((x*x)*x))) then
  R4pow70I4 = 1
else
  print *,"R4pow70I4: ng"
  R4pow70I4 = 0
endif
end function

integer(kind=4) function R4pow80I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**8, ((x*x)*(x*x))*((x*x)*(x*x)))) then
  R4pow80I4 = 1
else
  print *,"R4pow80I4: ng"
  R4pow80I4 = 0
endif
end function

integer(kind=4) function R4pow90I4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**9, (((x*x)*((x*x)*x))*((x*x)*(x*x))))) then
  R4pow90I4 = 1
else
  print *,"R4pow90I4: ng"
  R4pow90I4 = 0
endif
end function
