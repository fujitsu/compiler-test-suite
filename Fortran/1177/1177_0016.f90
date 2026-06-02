module mod
interface 
  module subroutine s1
  end
end interface
type,abstract :: ty
integer :: mm
contains
procedure(abx1),deferred :: prc
procedure(abx2),deferred :: prc1
generic :: assignment(=) => prc,prc1
generic :: gnr => prc,prc1
end type
contains
subroutine abx1(dmy,k)
class(ty),intent(out) :: dmy
real,intent(in) :: k
dmy%mm = k+9000
end 
subroutine abx2(dmy,k)
class(ty),intent(out) :: dmy
integer,intent(in) :: k
dmy%mm = k+9000
end
end

submodule (mod) smod
type,abstract :: ty
integer :: ii
contains
procedure(abs1),deferred :: prc
procedure(abs2),deferred :: prc1
generic :: assignment(=) => prc,prc1
generic :: gnr => prc,prc1
end type

interface 
module subroutine abs1(dmy,ii)
class(ty),intent(out) :: dmy
real,intent(in) :: ii
end 

module subroutine abs2(dmy,ii)
class(ty),intent(out) :: dmy
integer,intent(in) :: ii
end
end interface

contains

end 

 
submodule (mod:smod) smod2
type,extends(ty) :: ty1
integer :: kk
contains
procedure :: prc=>f1
procedure :: prc1=>f2
end type

interface
module subroutine f1(dmy,ii)
class(ty1),intent(out) :: dmy
real,intent(in) :: ii
end 
 
module subroutine f2(dmy,ii)
class(ty1),intent(out) :: dmy
integer,intent(in) :: ii
end
end interface

contains

module procedure abs1
dmy%ii = ii+1000
end 

module procedure abs2
dmy%ii = ii+2000
end
 
end
 
submodule (mod:smod2) smod3
contains

module procedure s1
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
end

module procedure f1
dmy%kk = ii
end 
 
module procedure f2
dmy%kk = ii + 10
end 

end 

use mod
call s1
print*,"sngg878h : pass"
end

