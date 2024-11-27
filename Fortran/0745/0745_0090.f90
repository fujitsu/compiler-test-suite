module m
 integer,parameter::i=1
 contains
  character(len=i) function fun()
  fun='12345'
  end function
end
use m
if(fun()/='1')print *,'error'
print *,'pass'
end
