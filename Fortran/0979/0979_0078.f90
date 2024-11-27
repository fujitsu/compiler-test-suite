integer,pointer :: p2
call sub1(p2)
call sub2(p2)
call sub3(p2)
print *,"pass"
contains

subroutine sub1(p2)
integer,pointer,intent(inout),optional :: p2
integer,target :: m
allocate(p2)
p2=>m
p2 = 1
if (m.ne.1) write(6,*) "NG"
end subroutine
subroutine sub2(p2)
optional :: p2
integer,pointer,intent(inout) :: p2
integer,target :: m
allocate(p2)
p2=>m
p2 = 1
if (m.ne.1) write(6,*) "NG"
end subroutine
subroutine sub3(p2)
integer,pointer,intent(inout) :: p2
optional :: p2
integer,target :: m
allocate(p2)
p2=>m
p2 = 1
if (m.ne.1) write(6,*) "NG"
end subroutine
end program
