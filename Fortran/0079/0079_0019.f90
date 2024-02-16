module m0
  integer::k=0
 interface
 module subroutine s()
 end 
 module subroutine x()
 end 
! subroutine ss1(i,ii)
! end 
 end interface
 interface
 module subroutine ss1(ia,ii)!   err
 end 
 end interface
end

submodule (m0) ss
! interface
! module subroutine ss1(i,ii)!   err
! end 
! end interface
contains
 module subroutine s()
   call ss1(1,3)
   call x
 end 
  module subroutine ss1(ia,ii)!   err
i=1
   k=k+i
  end
  module subroutine x
   k=k+1
  end
end

use m0
k=1
call s
!if (k/=2) print *,101
call ss1(1,2)
print *,'pass'
end
! subroutine ss1(i,ii)
! use m0
!  k=k+i+ii
! end 
