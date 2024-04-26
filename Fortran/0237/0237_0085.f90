module m1
  integer,private  ::x1
  integer,public   ::x2
  contains
  subroutine s11
  x1=x1+1
  x2=x2+1
  end subroutine
  subroutine set
  x1=0
  end subroutine
end
module  m2
use m1
contains
subroutine s2
call set
  x1=1
  x2=2
end subroutine
end
use m2
call s2
call s11
print *,'pass'
end
 
