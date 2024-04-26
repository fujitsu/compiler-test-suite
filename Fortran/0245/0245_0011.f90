integer :: arr=2

call sub(arr)

contains
subroutine sub(dmy)
integer,asynchronous :: dmy
print*,dmy
end subroutine
end
