module m01
real,target  :: t1=2.0
end
module m02
real,pointer :: p1
end
module m11
real,target  :: t2=2.0
!$omp threadprivate( t2)
end
module m12
real,pointer :: p2
!$omp threadprivate( p2)
end
module mxy
use m01,only:x1=>t1
use m11,only:x2=>t2
use m02,only:y1=>p1
use m12,only:y2=>p2
end
module q01
use mxy,only:a0=>x1
use mxy,only:a1=>x1
use m01,only:a2=>t1
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
type z
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
end type
end module

module q02
use mxy,only:a0=>x1
use mxy,only:a1=>x1
use m01,only:a2=>t1
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
type z
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
end type
type(z):: v
end module

subroutine r01
use mxy,only:a0=>x1
use mxy,only:a1=>x1
use m01,only:a2=>t1
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
type z
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
end type
end

subroutine r02
use mxy,only:a0=>x1
use mxy,only:a1=>x1
use m01,only:a2=>t1
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
type z
 real   ,pointer :: f1=> a0
 real   ,pointer :: f2=> a1
 real   ,pointer :: f3=> a2
end type
type(z):: v
end

subroutine r03
use q01
end

subroutine r04
use q02
end
call r01
call r02
call r03
call r04
print*,"pass"
end
