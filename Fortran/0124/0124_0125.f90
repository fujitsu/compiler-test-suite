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
integer(kind=4) R8pow00R4,R8pow05R4,R8pow10R4,R8pow15R4,R8pow20R4
integer(kind=4) R8pow25R4,R8pow30R4,R8pow35R4,R8pow40R4,R8pow45R4
integer(kind=4) R8pow50R4,R8pow55R4,R8pow60R4,R8pow65R4,R8pow70R4
integer(kind=4) R8pow75R4,R8pow80R4,R8pow85R4,R8pow90R4,R8pow95R4

x = 1.7_8
i = 0
i=i+R8pow00R4(x)
i=i+R8pow05R4(x)
i=i+R8pow10R4(x)
i=i+R8pow15R4(x)
i=i+R8pow20R4(x)
i=i+R8pow25R4(x)
i=i+R8pow30R4(x)
i=i+R8pow35R4(x)
i=i+R8pow40R4(x)
i=i+R8pow45R4(x)
i=i+R8pow50R4(x)
i=i+R8pow55R4(x)
i=i+R8pow60R4(x)
i=i+R8pow65R4(x)
i=i+R8pow70R4(x)
i=i+R8pow75R4(x)
i=i+R8pow80R4(x)
i=i+R8pow85R4(x)
i=i+R8pow90R4(x)
i=i+R8pow95R4(x)
if (i == 20) then
  print *,"ok"
else
  print *,"ng: i=", i
endif
end program

integer(kind=4) function R8pow00R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**0.0_4, 1.0_8)) then
  R8pow00R4 = 1
else
  print *,"R8pow00R4: ng"
  R8pow00R4 = 0
endif
end function

integer(kind=4) function R8pow05R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**0.5_4, SQRT(x))) then
  R8pow05R4 = 1
else
  print *,"R8pow05R4: ng"
  R8pow05R4 = 0
endif
end function

integer(kind=4) function R8pow10R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**1.0_4, x)) then
  R8pow10R4 = 1
else
  print *,"R8pow10R4: ng"
  R8pow10R4 = 0
endif
end function

integer(kind=4) function R8pow15R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**1.5_4, x*SQRT(x))) then
  R8pow15R4 = 1
else
  print *,"R8pow15R4: ng"
  R8pow15R4 = 0
endif
end function

integer(kind=4) function R8pow20R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**2.0_4, x*x)) then
  R8pow20R4 = 1
else
  print *,"R8pow20R4: ng"
  R8pow20R4 = 0
endif
end function

integer(kind=4) function R8pow25R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**2.5_4, (x*x)*SQRT(x))) then
  R8pow25R4 = 1
else
  print *,"R8pow25R4: ng"
  R8pow25R4 = 0
endif
end function

integer(kind=4) function R8pow30R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**3.0_4, (x*x)*x)) then
  R8pow30R4 = 1
else
  print *,"R8pow30R4: ng"
  R8pow30R4 = 0
endif
end function

integer(kind=4) function R8pow35R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**3.5_4, ((x*x)*x)*SQRT(x))) then
  R8pow35R4 = 1
else
  print *,"R8pow35R4: ng"
  R8pow35R4 = 0
endif
end function

integer(kind=4) function R8pow40R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**4.0_4, (x*x)*(x*x))) then
  R8pow40R4 = 1
else
  print *,"R8pow40R4: ng"
  R8pow40R4 = 0
endif
end function

integer(kind=4) function R8pow45R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**4.5_4, ((x*x)*(x*x))*SQRT(x))) then
  R8pow45R4 = 1
else
  print *,"R8pow45R4: ng"
  R8pow45R4 = 0
endif
end function

integer(kind=4) function R8pow50R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**5.0_4, (x*x)*((x*x)*x))) then
  R8pow50R4 = 1
else
  print *,"R8pow50R4: ng"
  R8pow50R4 = 0
endif
end function

integer(kind=4) function R8pow55R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**5.5_4, ((x*x)*((x*x)*x))*SQRT(x))) then
  R8pow55R4 = 1
else
  print *,"R8pow55R4: ng"
  R8pow55R4 = 0
endif
end function

integer(kind=4) function R8pow60R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**6.0_4, ((x*x)*x)*((x*x)*x))) then
  R8pow60R4 = 1
else
  print *,"R8pow60R4: ng"
  R8pow60R4 = 0
endif
end function

integer(kind=4) function R8pow65R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**6.5_4, ((x*x)*x)*((x*x)*x)*SQRT(x))) then
  R8pow65R4 = 1
else
  print *,"R8pow65R4: ng"
  R8pow65R4 = 0
endif
end function

integer(kind=4) function R8pow70R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**7.0_4, ((x*x)*(x*x))*((x*x)*x))) then
  R8pow70R4 = 1
else
  print *,"R8pow70R4: ng"
  R8pow70R4 = 0
endif
end function

integer(kind=4) function R8pow75R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**7.5_4, (((x*x)*(x*x))*((x*x)*x))*SQRT(x))) then
  R8pow75R4 = 1
else
  print *,"R8pow75R4: ng"
  R8pow75R4 = 0
endif
end function

integer(kind=4) function R8pow80R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**8.0_4, ((x*x)*(x*x))*((x*x)*(x*x)))) then
  R8pow80R4 = 1
else
  print *,"R8pow80R4: ng"
  R8pow80R4 = 0
endif
end function

integer(kind=4) function R8pow85R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**8.5_4, (((x*x)*(x*x))*((x*x)*(x*x)))*SQRT(x))) then
  R8pow85R4 = 1
else
  print *,"R8pow85R4: ng"
  R8pow85R4 = 0
endif
end function

integer(kind=4) function R8pow90R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**9.0_4, (((x*x)*((x*x)*x))*((x*x)*(x*x))))) then
  R8pow90R4 = 1
else
  print *,"R8pow90R4: ng"
  R8pow90R4 = 0
endif
end function

integer(kind=4) function R8pow95R4(x)
real(kind=8) x
logical(kind=1) compareR8
if (compareR8(x**9.5_4, ((((x*x)*((x*x)*x))*((x*x)*(x*x))))*SQRT(x))) then
  R8pow95R4 = 1
else
  print *,"R8pow95R4: ng"
  R8pow95R4 = 0
endif
end function
