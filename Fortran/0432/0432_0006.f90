call test01()
print *,'pass'
end

subroutine test01()
type ty0
  integer,pointer :: aa(:) =>null()
end type
type ty1
 integer :: a(10000) =1
 type(ty0) :: str(1)
 integer :: b(10000) =2
 integer :: c(10000) =3
 integer(1) ,pointer :: ip
 integer(1) ,allocatable :: ia
 integer :: d(10000) =4
 integer(1) ,pointer :: ipp(:,:,:,:,:,:,:)
 integer(1) ,allocatable :: iaa(:,:,:,:,:,:,:)
 integer :: e(10000) =5
end type
type ty2
 type(ty1) :: s(4) 
end type
type(ty2) :: str(1) 
if (str(1)%s(4)%a(10000).ne.1) print *,'err 1'
if (str(1)%s(4)%b(10000).ne.2) print *,'err 1'
if (str(1)%s(4)%c(10000).ne.3) print *,'err 1'
if (str(1)%s(4)%d(10000).ne.4) print *,'err 1'
if (str(1)%s(4)%e(10000).ne.5) print *,'err 1'
if (str(1)%s(4)%a(1).ne.1) print *,'err 1'
if (str(1)%s(4)%b(1).ne.2) print *,'err 1'
if (str(1)%s(4)%c(1).ne.3) print *,'err 1'
if (str(1)%s(4)%d(1).ne.4) print *,'err 1'
if (str(1)%s(4)%e(1).ne.5) print *,'err 1'
end
