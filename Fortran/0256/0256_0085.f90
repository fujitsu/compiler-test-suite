type tt
integer,pointer:: alc(:)
end type
type, EXTENDS(tt)::ty
integer::a
end type
type, EXTENDS(ty)::tz
integer::c
end type
class(tt),pointer :: obj2(:,:)
allocate(tz::obj2(3,3))
allocate(obj2(1,1)%alc(5))
obj2(1,1)%alc = 4
if (any(obj2(1,1)%alc/=[4,4,4,4,4])) print *,105,obj2(1,1)%alc
call ss(obj2(1:3:2,1:3:2)) 
if (any(obj2(1,1)%alc/=[16,16,16,16,16])) print *,106,obj2(1,1)%alc
contains
subroutine ss(dmy)
class(tt):: dmy(:,:)
class(tt),pointer :: pdmy(:,:)
select type (dmy)
    type is (tz)
        dmy(1,1)%alc = 6
        print*, "PASS"
    class default
        print*,"ERROR"
end select
call sub(dmy,pdmy)
end subroutine

subroutine sub(dmy1,dmy2)
class(tt),optional,contiguous::dmy1(:,:)
class(tt),optional,contiguous::dmy2(:,:)
if (present(dmy1)) then
select type (dmy1)
    type is (tz)
        dmy1(1,1)%alc = 16
    class default
        print*,"ERROR"
end select
end if
if (present(dmy2)) then
if(is_contiguous(dmy2).neqv..true.)print*,"101"
end if
end subroutine
end
