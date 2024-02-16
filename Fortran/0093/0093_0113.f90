complex :: cc(2,3) = (2,3)
call sub(cc%re)
contains
subroutine sub(dmy)
real :: dmy(2,3)
if(any(dmy .ne. 2)) print*,"101"
print*,"pass"
end subroutine
end

