module m0
  integer::k
 interface
 module subroutine s()
 end 
 module subroutine x()
 end 
 module subroutine ss1(i,ii,iii)
  integer :: i(k)
  integer :: ii(k+1)
  integer :: iii(k+2)
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
  integer :: j(k)
  integer :: jj(k+1)
  integer :: jjj(k+2)
   call ss1(j,jj,jjj)
   call x
 end 
  module subroutine ss1(i,ii,iii)
  integer :: i(k)
  integer :: ii(k+1)
  integer :: iii(k+2)
  end
  module subroutine x
   k=k+1
  end
end

use m0
k=1
call s
print *,'pass'
end
