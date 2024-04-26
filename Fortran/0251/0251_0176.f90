interface
subroutine sub(dmy)
integer :: dmy
end subroutine
end interface
integer :: aa = 2
call sub(aa)
print*,aa
end

subroutine sub(dmy)
type tt
 integer,pointer :: cc
end type

integer :: dmy
block
type(tt) :: ptr
dmy = dmy + 2
end block
end subroutine
