module mod
interface 
  module subroutine s1
  end
end interface
type :: ty
integer :: k
end type
end

submodule (mod) smod
  type,extends(ty)::yy2
    integer::k1
  end type
end 

 
submodule (mod:smod) smod2
  type,extends(yy2)::zy3
    integer::k2
  end type
end
 
submodule (mod:smod2) smod3
!contains
  !module subroutine s1
  !type,extends(zy3)::wy4
  !  integer::k3
  !end type
end

print*,"sngg366o : pass"
end

