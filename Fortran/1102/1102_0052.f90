module mod
interface 
  module subroutine s1
  end
end interface
type :: ty
integer :: mm
end type
end

submodule (mod) smod
type :: ty
integer :: ii
integer :: nn
end type
end 

 
submodule (mod:smod) smod2
type,extends(ty) :: ty1
integer :: kk
end type
end
 
submodule (mod:smod2) smod3
contains

  module subroutine s1
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
n=0
select type(cptr)
  type is(ty1)
   n=1
   cptr%ii=1
   cptr%nn=2
   cptr%kk=3
if (cptr%kk/=3) print *,9001
end select
if (n/=1) print *,2002

end
end 

use mod
call s1
print*,"sngg221o : pass"
end

