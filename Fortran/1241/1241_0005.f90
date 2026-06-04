module mod 
  interface gen
!     subroutine sub 
!     end subroutine sub
  end interface
  interface           
     function fun() bind(c)
     end function fun
  end interface
  interface gen
  end interface
end module mod
use mod
print *,'sngtp06:pass'
end
