class(*),pointer :: cptr(:,:)
allocate(integer::cptr(10,10))
select type(cptr)
end select
call sub(cptr)
contains
subroutine sub(dmy)
class(*) :: dmy(:,:)
select type(dmy)
type is(integer)
print*,"Pass"
end select
end subroutine
end

