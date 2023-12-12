module m1
abstract interface ! Standard confirming 
   subroutine gen01()
   end subroutine
end interface
!!abstractinterface ! Non standard confirming 
!!   subroutine gen02()
!!   end subroutine
!!end interface
 end
subroutine s1
use m1
end
call s1
print *,'OK'
end
