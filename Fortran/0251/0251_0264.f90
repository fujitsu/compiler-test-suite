block
interface gnr
function fun1(d1,d2)
integer::fun1,d1,d2
end function
end interface
if(gnr(10,7)==18)print*,"1:pass"
end block
block
  interface gnr
  function fun1(d1,d2)
  integer::fun1,d1,d2
  end function
  end interface
  if(gnr(10,7)==19)print*,"2:pass"
end block
end

function fun1(d1,d2)
integer::fun1,d1,d2
integer,save::ii=1
fun1=d1+d2+ii
ii=ii+1
end function
