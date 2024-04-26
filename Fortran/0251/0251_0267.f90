interface gnr
real function fun1(d1,d2)
integer::d1
real::d2
end function
end interface
block
interface gnr
integer function fun2(d1,d2)
integer::d1,d2
end function
end interface
  block
  interface gnr
  real function fun3(d1,d2)
  real::d1,d2
  end function
  end interface
  if(gnr(12,10.25)==23.25)print*,"1:pass"
  if(gnr(10,20)==201)print*,"2:pass"
  if(gnr(20.50,15.50)==5.00)print*,"3:pass"
  end block
if(gnr(12,10.25)==24.25)print*,"4:pass"
if(gnr(10,20)==202)print*,"5:pass"
end block
if(gnr(12,10.25)==25.25)print*,"6:pass"
end

real function fun1(d1,d2)
integer::d1
real::d2
integer,save::ii=1
print*,"in fun1"
fun1=d1+d2+ii
ii=ii+1
end function

integer function fun2(d1,d2)
integer::d1,d2
integer,save::ii=1
print*,"in fun2"
fun2=d1*d2+ii
ii=ii+1
end function

real function fun3(d1,d2)
real::d1,d2
print*,"in sub3"
fun3=d1-d2
end function
