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
end type
contains
subroutine y1
type(ty)::m
m%ii=1
end
end 

 
submodule (mod:smod) smod2
type,extends(ty) :: ty1
integer :: kk
end type
contains
subroutine t1
type(ty)::m
type(ty1)::n
m%ii=1
n%ii=1
n%kk=1
end
end
 
submodule (mod:smod2) smod3
contains

module procedure s1
type(ty1) :: obj
type(ty)::z
type(ty1)::w
z%ii=1
w%ii=1
w%kk=1
obj%ii=1
end
end 

use mod
call s1
print*,"sngg891h : pass"
end

