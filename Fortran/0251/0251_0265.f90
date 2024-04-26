block
interface gnr
function fun1(d1,d2)
real::fun1,d1,d2
end function
end interface
  block
  interface gnr
  function fun2(d1,d2)
  integer::fun2,d1,d2
  end function
  end interface
  if(gnr(10.5,7.5)==19.0)print*,"1:pass"
  if(gnr(10,7)==18)print*,"2:pass"
  end block
if(gnr(10.5,7.5)==20.0)print*,"3:pass"
end block
block
interface gnr
function fun1(d1,d2)
real::fun1,d1,d2
end function
end interface
  block
  interface gnr
  function fun2(d1,d2)
  integer::fun2,d1,d2
  end function
  end interface
  if(gnr(10,7)==19)print*,"4:pass"
  end block
if(gnr(10.5,7.5)==21.0)print*,"5:pass"
end block
end

function fun1(d1,d2)
real::fun1,d1,d2
integer,save::ii=1
fun1=d1+d2+ii
ii=ii+1
end function
function fun2(d1,d2)
integer::fun2,d1,d2
integer,save::ii=1
fun2=d1+d2+ii
ii=ii+1
end function
