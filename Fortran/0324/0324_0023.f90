call test01()
call test02()
call test03()
print *,'pass'
end

module mod03
type ty0
 integer :: ia =1
end type
type ty1
 type(ty0) ,allocatable :: aa(:,:,:)
end type 
type (ty1) :: str
integer,dimension(10,10,10,10,10,10) :: ar1,ar2,ar3,ar4,ar5,ar6
contains
subroutine sub1()
type (ty1) :: str2
if (.not.allocated(str%aa)) allocate(str%aa(100,100,100))
if (.not.allocated(str2%aa)) allocate(str2%aa(100,100,100))
end subroutine
end

subroutine test03()
use mod03
type (ty1) :: str2
if (.not.allocated(str2%aa)) allocate(str2%aa(100,100,100))
call sub1()
end



module mod02
type ty1
 integer ,allocatable :: aa(:,:,:)
end type 
type (ty1) :: str
integer,dimension(10,10,10,10,10,10) :: ar1,ar2,ar3,ar4,ar5,ar6
contains
subroutine sub1()
type (ty1) :: str2
if (.not.allocated(str%aa)) allocate(str%aa(100,100,100))
if (.not.allocated(str2%aa)) allocate(str2%aa(100,100,100))
end subroutine
end

subroutine test02()
use mod02
type (ty1) :: str2
if (.not.allocated(str2%aa)) allocate(str2%aa(100,100,100))
call sub1()
end







module mod01
integer ,allocatable :: a1(:)
integer ,allocatable :: a2(:)
integer ,allocatable :: a3(:)
integer ,allocatable :: a4(:)
integer ,allocatable :: a5(:)
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1,ar2,ar3,ar4,ar5,ar6
private :: a3
end 
module mod01a
integer ,allocatable :: a1(:)
integer ,allocatable :: a2(:)
integer ,allocatable :: a3(:)
integer ,allocatable :: a4(:)
integer ,allocatable :: a5(:)
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1,ar2,ar3,ar4,ar5,ar6
private :: a3
end

subroutine test01()
use mod01,only:a1
use mod01,only:ar1,ar2
use mod01a
end
