logical(kind=1) function compareR4(x,y)
real(kind=4) x,y
integer(kind=4) newx,newy
newx = int(x*1000._4, kind=4)
newy = int(y*1000._4, kind=4)
if (newx == newy) then
  compareR4 = .true.
else 
  compareR4 = .false.
endif
end function

program main
real(kind=4) x
integer(kind=4) i
integer(kind=4) R4pow00R4,R4pow05R4,R4pow10R4,R4pow15R4,R4pow20R4
integer(kind=4) R4pow25R4,R4pow30R4,R4pow35R4,R4pow40R4,R4pow45R4
integer(kind=4) R4pow50R4,R4pow55R4,R4pow60R4,R4pow65R4,R4pow70R4
integer(kind=4) R4pow75R4,R4pow80R4,R4pow85R4,R4pow90R4,R4pow95R4

x = 1.7_8
i = 0
i=i+R4pow00R4(x)
i=i+R4pow05R4(x)
i=i+R4pow10R4(x)
i=i+R4pow15R4(x)
i=i+R4pow20R4(x)
i=i+R4pow25R4(x)
i=i+R4pow30R4(x)
i=i+R4pow35R4(x)
i=i+R4pow40R4(x)
i=i+R4pow45R4(x)
i=i+R4pow50R4(x)
i=i+R4pow55R4(x)
i=i+R4pow60R4(x)
i=i+R4pow65R4(x)
i=i+R4pow70R4(x)
i=i+R4pow75R4(x)
i=i+R4pow80R4(x)
i=i+R4pow85R4(x)
i=i+R4pow90R4(x)
i=i+R4pow95R4(x)
if (i == 20) then
  print *,"ok"
else
  print *,"ng: i=", i
endif
end program

integer(kind=4) function R4pow00R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**0.0_4, 1.0_4)) then
  R4pow00R4 = 1
else
  print *,"R4pow00R4: ng"
  R4pow00R4 = 0
endif
end function

integer(kind=4) function R4pow05R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**0.5_4, SQRT(x))) then
  R4pow05R4 = 1
else
  print *,"R4pow05R4: ng"
  R4pow05R4 = 0
endif
end function

integer(kind=4) function R4pow10R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**1.0_4, x)) then
  R4pow10R4 = 1
else
  print *,"R4pow10R4: ng"
  R4pow10R4 = 0
endif
end function

integer(kind=4) function R4pow15R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**1.5_4, x*SQRT(x))) then
  R4pow15R4 = 1
else
  print *,"R4pow15R4: ng"
  R4pow15R4 = 0
endif
end function

integer(kind=4) function R4pow20R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**2.0_4, x*x)) then
  R4pow20R4 = 1
else
  print *,"R4pow20R4: ng"
  R4pow20R4 = 0
endif
end function

integer(kind=4) function R4pow25R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**2.5_4, (x*x)*SQRT(x))) then
  R4pow25R4 = 1
else
  print *,"R4pow25R4: ng"
  R4pow25R4 = 0
endif
end function

integer(kind=4) function R4pow30R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**3.0_4, (x*x)*x)) then
  R4pow30R4 = 1
else
  print *,"R4pow30R4: ng"
  R4pow30R4 = 0
endif
end function

integer(kind=4) function R4pow35R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**3.5_4, ((x*x)*x)*SQRT(x))) then
  R4pow35R4 = 1
else
  print *,"R4pow35R4: ng"
  R4pow35R4 = 0
endif
end function

integer(kind=4) function R4pow40R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**4.0_4, (x*x)*(x*x))) then
  R4pow40R4 = 1
else
  print *,"R4pow40R4: ng"
  R4pow40R4 = 0
endif
end function

integer(kind=4) function R4pow45R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**4.5_4, ((x*x)*(x*x))*SQRT(x))) then
  R4pow45R4 = 1
else
  print *,"R4pow45R4: ng"
  R4pow45R4 = 0
endif
end function

integer(kind=4) function R4pow50R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**5.0_4, (x*x)*((x*x)*x))) then
  R4pow50R4 = 1
else
  print *,"R4pow50R4: ng"
  R4pow50R4 = 0
endif
end function

integer(kind=4) function R4pow55R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**5.5_4, ((x*x)*((x*x)*x))*SQRT(x))) then
  R4pow55R4 = 1
else
  print *,"R4pow55R4: ng"
  R4pow55R4 = 0
endif
end function

integer(kind=4) function R4pow60R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**6.0_4, ((x*x)*x)*((x*x)*x))) then
  R4pow60R4 = 1
else
  print *,"R4pow60R4: ng"
  R4pow60R4 = 0
endif
end function

integer(kind=4) function R4pow65R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**6.5_4, ((x*x)*x)*((x*x)*x)*SQRT(x))) then
  R4pow65R4 = 1
else
  print *,"R4pow65R4: ng"
  R4pow65R4 = 0
endif
end function

integer(kind=4) function R4pow70R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**7.0_4, ((x*x)*(x*x))*((x*x)*x))) then
  R4pow70R4 = 1
else
  print *,"R4pow70R4: ng"
  R4pow70R4 = 0
endif
end function

integer(kind=4) function R4pow75R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**7.5_4, (((x*x)*(x*x))*((x*x)*x))*SQRT(x))) then
  R4pow75R4 = 1
else
  print *,"R4pow75R4: ng"
  R4pow75R4 = 0
endif
end function

integer(kind=4) function R4pow80R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**8.0_4, ((x*x)*(x*x))*((x*x)*(x*x)))) then
  R4pow80R4 = 1
else
  print *,"R4pow80R4: ng"
  R4pow80R4 = 0
endif
end function

integer(kind=4) function R4pow85R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**8.5_4, (((x*x)*(x*x))*((x*x)*(x*x)))*SQRT(x))) then
  R4pow85R4 = 1
else
  print *,"R4pow85R4: ng"
  R4pow85R4 = 0
endif
end function

integer(kind=4) function R4pow90R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**9.0_4, (((x*x)*((x*x)*x))*((x*x)*(x*x))))) then
  R4pow90R4 = 1
else
  print *,"R4pow90R4: ng"
  R4pow90R4 = 0
endif
end function

integer(kind=4) function R4pow95R4(x)
real(kind=4) x
logical(kind=1) compareR4
if (compareR4(x**9.5_4, ((((x*x)*((x*x)*x))*((x*x)*(x*x))))*SQRT(x))) then
  R4pow95R4 = 1
else
  print *,"R4pow95R4: ng"
  R4pow95R4 = 0
endif
end function
