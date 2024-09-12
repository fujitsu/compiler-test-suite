module m1
implicit none
    type ty
        integer :: ii
        integer :: jj
      contains
        procedure, PASS(dmy) :: init => init_ty
        procedure, NOPASS    :: check => getdata
    end type
contains
    LOGICAL function init_ty(num1, dmy, num2)
        class(ty), INTENT(INOUT) :: dmy
        integer  , INTENT(IN)    :: num1
        integer  , INTENT(IN)    :: num2
        dmy%ii = num1
        dmy%jj = num2
        init_ty = .TRUE.
    end function
    integer function getData(dmy)
        class(ty), INTENT(IN) :: dmy
        getData   = dmy%ii + dmy%jj
    end function
end module
module m2
use m1
implicit none
  type ty2
    type(ty) :: ty_obj(2)
    type(ty) :: ty_obj1
  contains
    procedure, PASS(dmy) :: init  => init_ty2
    procedure            :: check => getdata_ty2
  end type
contains
    LOGICAL function init_ty2(num1, dmy, num2)
        class(ty2), INTENT(INOUT) :: dmy
        integer  , INTENT(IN)    :: num1(:)
        integer  , INTENT(IN)    :: num2(:)
        init_ty2 =  dmy%ty_obj(1)%init(num1(1), num2(1)) .AND. &
                    dmy%ty_obj(2)%init(num1(2), num2(2))
    end function
    integer function getData_ty2(dmy,index)
        class(ty2), INTENT(IN) :: dmy
        integer, INTENT(IN) :: index
        getData_ty2  = dmy%ty_obj(index)%check(dmy%ty_obj(index))
    end function
end module

program main
use m2
implicit none
type(ty2) :: obj(2)
integer  :: ii(2)
integer  :: jj(2)
ii = (/1, 2/)
jj = (/4, 3/)

if( obj(1)%init(ii,jj) .AND. &
    obj(2)%init(ii,jj)) then
if( (obj(1)%check(1) .EQ. ii(1) + jj(1)) .AND. &
    (obj(1)%check(2) .EQ. ii(2) + jj(2)) .AND. &
    (obj(2)%check(1) .EQ. ii(1) + jj(1)) .AND. &
    (obj(2)%check(2) .EQ. ii(2) + jj(2)) ) then
    print*,"pass"
else
    print*, "fail"
endif
else
    print*, "fail"
endif
end program
