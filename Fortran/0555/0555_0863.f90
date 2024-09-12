class(*),pointer :: cptr(:,:)
allocate(integer::cptr(10,10))
select type(cptr)
class default
call sub(cptr)
end select
contains
subroutine sub(dmy)
class(*) :: dmy(:,:)
select type(dmy)
type is(integer)
print*,"Pass"
end select
end subroutine
end

