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
call ss(obj2(1:3:2,1:3:2)) 

contains
subroutine ss(dmy)
class(tt):: dmy(:,:)
select type (dmy)
    type is (tz)
        dmy(1,1)%a = 6
        print*, "PASS"
    class default
        print*,"ERROR"
end select
call sub(dmy,dmy(1,1)%alc(1:5:2))
 if (any(dmy(1,1)%alc/=[10,4,10,4,10])) print *,102,dmy(1,1)%alc        
end subroutine

subroutine sub(dmy1,dmy2)
class(tt),optional,contiguous::dmy1(:,:)
integer,contiguous::dmy2(:)
 if (present(dmy1)) then
select type (dmy1)
    type is (tz)
        dmy1(1,1)%a = 16
    class default
        print*,"ERROR"
end select
endif
dmy2 = 10
end subroutine
end
