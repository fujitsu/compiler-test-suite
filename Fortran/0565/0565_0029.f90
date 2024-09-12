type ty
integer :: ii(5)
end type ty

type tty
type(ty) :: obj_ty
character(len = 3) :: jj(5)
end type tty

type t1
type(tty) :: obj_tty
complex :: kk(5)
end type t1

type t2
type(t1) :: obj_t1
logical :: ll(5)
end type t2

type t3
type(t2) :: obj_t2
end type t3

type(t3),allocatable :: obj_t3

Allocate(obj_t3)
obj_t3%obj_t2%ll = .true.
obj_t3%obj_t2%obj_t1%kk = (2,3)
obj_t3%obj_t2%obj_t1%obj_tty%jj = 'ABCD'
obj_t3%obj_t2%obj_t1%obj_tty%obj_ty%ii = 1

call sub(obj_t3%obj_t2%ll,obj_t3%obj_t2%obj_t1%kk,obj_t3%obj_t2%obj_t1%obj_tty%jj,obj_t3%obj_t2%obj_t1%obj_tty%obj_ty%ii)

if(any(obj_t3%obj_t2%ll .neqv. .true.))print *, 101
if(any(obj_t3%obj_t2%obj_t1%kk /= (2,3)))print *, 102
if(any(obj_t3%obj_t2%obj_t1%obj_tty%jj /= 'ABC'))print *, 103 , obj_t3%obj_t2%obj_t1%obj_tty%jj
if(any(obj_t3%obj_t2%obj_t1%obj_tty%obj_ty%ii /= 1))print *, 104
print *, "PASS" 

contains
subroutine sub(dmy1,dmy2,dmy3,dmy4)
    VALUE :: dmy1,dmy3
    logical :: dmy1(:)
    complex,value :: dmy2
    character(len = 3) :: dmy3
    integer,value:: dmy4(:)
    DIMENSION :: dmy3(:),dmy2(:)
    dmy1 = .FALSE.
    dmy2 = (1,1)
    dmy3 = 'PQRS'
    dmy4 = 8
end subroutine sub
end 
