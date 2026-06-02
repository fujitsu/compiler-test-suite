integer,pointer :: aa(:,:)

allocate(aa(3,4))
call sub1(aa(1:3:1,1:4:2))

contains
subroutine sub1(dmy)
type(*) :: dmy(..)
if(loc(aa) .ne. loc(dmy))print*,'101'
call sub2(dmy)
end subroutine sub1

subroutine sub2(dmy1)
type(*) :: dmy1(..)
if(loc(aa) .ne. loc(dmy1))print*,'102'
print*,'PASS'
end subroutine sub2
end
