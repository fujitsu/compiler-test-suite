module m1
  procedure(sin), pointer :: sub
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
     sub=> cos
     if (abs(s(0.1)-cos(0.1))>0.00001) print *,1001
     sub=>sin
     if (abs(s(0.1)-sin(0.1))>0.00001) print *,1002
  end subroutine
end 

use m2
call s1
print *,'sngg537p : pass'
end
