logical(kind=1) function compareR8(x,y)
real(kind=8) x,y
integer(kind=8) newx,newy
newx = int(x*1000000._8, kind=8)
newy = int(y*1000000._8, kind=8)
if (newx == newy) then
  compareR8 = .true.
else 
  compareR8 = .false.
endif
end function

program main
real(kind=8) x
integer(kind=4) i
integer(kind=4) R8pow00R8,R8pow05R8,R8pow10R8,R8pow15R8,R8pow20R8
integer(kind=4) R8pow25R8,R8pow30R8,R8pow35R8,R8pow40R8,R8pow45R8
integer(kind=4) R8pow50R8,R8pow55R8,R8pow60R8,R8pow65R8,R8pow70R8
integer(kind=4) R8pow75R8,R8pow80R8,R8pow85R8,R8pow90R8,R8pow95R8

x = 1.7_8
i = 0
i=i+R8pow00R8(x)
i=i+R8pow05R8(x)
i=i+R8pow10R8(x)
i=i+R8pow15R8(x)
i=i+R8pow20R8(x)
i=i+R8pow25R8(x)
i=i+R8pow30R8(x)
i=i+R8pow35R8(x)
i=i+R8pow40R8(x)
i=i+R8pow45R8(x)
i=i+R8pow50R8(x)
i=i+R8pow55R8(x)
i=i+R8pow60R8(x)
i=i+R8pow65R8(x)
i=i+R8pow70R8(x)
i=i+R8pow75R8(x)
i=i+R8pow80R8(x)
i=i+R8pow85R8(x)
i=i+R8pow90R8(x)
i=i+R8pow95R8(x)
if (i == 20) then
  print *,"ok"
else
  print *,"ng: i=", i
endif
end program

integer(kind=4) function R8pow00R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**0.0_8, 1.0_8)) then
  R8pow00R8 = 1
else
  print *,"R8pow00R8: ng"
  R8pow00R8 = 0
endif
end function

integer(kind=4) function R8pow05R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**0.5_8, SQRT(x))) then
  R8pow05R8 = 1
else
  print *,"R8pow05R8: ng"
  R8pow05R8 = 0
endif
end function

integer(kind=4) function R8pow10R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**1.0_8, x)) then
  R8pow10R8 = 1
else
  print *,"R8pow10R8: ng"
  R8pow10R8 = 0
endif
end function

integer(kind=4) function R8pow15R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**1.5_8, x*SQRT(x))) then
  R8pow15R8 = 1
else
  print *,"R8pow15R8: ng"
  R8pow15R8 = 0
endif
end function

integer(kind=4) function R8pow20R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**2.0_8, x*x)) then
  R8pow20R8 = 1
else
  print *,"R8pow20R8: ng"
  R8pow20R8 = 0
endif
end function

integer(kind=4) function R8pow25R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**2.5_8, (x*x)*SQRT(x))) then
  R8pow25R8 = 1
else
  print *,"R8pow25R8: ng"
  R8pow25R8 = 0
endif
end function

integer(kind=4) function R8pow30R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**3.0_8, (x*x)*x)) then
  R8pow30R8 = 1
else
  print *,"R8pow30R8: ng"
  R8pow30R8 = 0
endif
end function

integer(kind=4) function R8pow35R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**3.5_8, ((x*x)*x)*SQRT(x))) then
  R8pow35R8 = 1
else
  print *,"R8pow35R8: ng"
  R8pow35R8 = 0
endif
end function

integer(kind=4) function R8pow40R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**4.0_8, (x*x)*(x*x))) then
  R8pow40R8 = 1
else
  print *,"R8pow40R8: ng"
  R8pow40R8 = 0
endif
end function

integer(kind=4) function R8pow45R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**4.5_8, ((x*x)*(x*x))*SQRT(x))) then
  R8pow45R8 = 1
else
  print *,"R8pow45R8: ng"
  R8pow45R8 = 0
endif
end function

integer(kind=4) function R8pow50R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**5.0_8, (x*x)*((x*x)*x))) then
  R8pow50R8 = 1
else
  print *,"R8pow50R8: ng"
  R8pow50R8 = 0
endif
end function

integer(kind=4) function R8pow55R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**5.5_8, ((x*x)*((x*x)*x))*SQRT(x))) then
  R8pow55R8 = 1
else
  print *,"R8pow55R8: ng"
  R8pow55R8 = 0
endif
end function

integer(kind=4) function R8pow60R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**6.0_8, ((x*x)*x)*((x*x)*x))) then
  R8pow60R8 = 1
else
  print *,"R8pow60R8: ng"
  R8pow60R8 = 0
endif
end function

integer(kind=4) function R8pow65R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**6.5_8, ((x*x)*x)*((x*x)*x)*SQRT(x))) then
  R8pow65R8 = 1
else
  print *,"R8pow65R8: ng"
  R8pow65R8 = 0
endif
end function

integer(kind=4) function R8pow70R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**7.0_8, ((x*x)*(x*x))*((x*x)*x))) then
  R8pow70R8 = 1
else
  print *,"R8pow70R8: ng"
  R8pow70R8 = 0
endif
end function

integer(kind=4) function R8pow75R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**7.5_8, (((x*x)*(x*x))*((x*x)*x))*SQRT(x))) then
  R8pow75R8 = 1
else
  print *,"R8pow75R8: ng"
  R8pow75R8 = 0
endif
end function

integer(kind=4) function R8pow80R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**8.0_8, ((x*x)*(x*x))*((x*x)*(x*x)))) then
  R8pow80R8 = 1
else
  print *,"R8pow80R8: ng"
  R8pow80R8 = 0
endif
end function

integer(kind=4) function R8pow85R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**8.5_8, (((x*x)*(x*x))*((x*x)*(x*x)))*SQRT(x))) then
  R8pow85R8 = 1
else
  print *,"R8pow85R8: ng"
  R8pow85R8 = 0
endif
end function

integer(kind=4) function R8pow90R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**9.0_8, (((x*x)*((x*x)*x))*((x*x)*(x*x))))) then
  R8pow90R8 = 1
else
  print *,"R8pow90R8: ng"
  R8pow90R8 = 0
endif
end function

integer(kind=4) function R8pow95R8(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**9.5_8, ((((x*x)*((x*x)*x))*((x*x)*(x*x))))*SQRT(x))) then
  R8pow95R8 = 1
else
  print *,"R8pow95R8: ng"
  R8pow95R8 = 0
endif
end function
