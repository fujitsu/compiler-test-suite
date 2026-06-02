module m0
  procedure(sin) :: sub
end
module m1
  use m0
  interface s
     procedure sub
  end interface
end module m1
module m2
  interface
     subroutine e()
      use m1           
     end subroutine
  end interface
contains
  subroutine s1
     use m1
     intrinsic::cos
     if (abs(s(0.1)-cos(0.1))>0.00001) print *,1001
  end subroutine
end 

use m2
call s1
print *,'sngg547p : pass'
end
function   sub(d)
  sub=cos(d)
end

