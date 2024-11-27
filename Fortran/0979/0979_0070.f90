integer,pointer :: pp
call sub1(pp)
call sub2(pp)
call sub3(pp)
call sub11(pp)
call sub21(pp)
call sub31(pp)
print *,"pass"
contains

subroutine sub1(pp)
integer :: pp
intent(inout) :: pp
pointer :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=1 
if (pp .ne. 1) write(6,*) "NG"
end subroutine

subroutine sub2(pp)
integer,intent(inout) :: pp
pointer :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=2 
if (pp .ne. 2) write(6,*) "NG"
end subroutine

subroutine sub3(pp)
integer :: pp
intent(inout) :: pp
pointer :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=3 
if (pp .ne. 3) write(6,*) "NG"
end subroutine

subroutine sub11(pp)
integer,pointer :: pp
intent(inout) :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=4 
if (pp .ne. 4) write(6,*) "NG"
end subroutine

subroutine sub21(pp)
integer :: pp
pointer :: pp
integer,target :: ii
intent(inout) :: pp
allocate(pp)
pp=>ii
pp=5 
if (pp .ne. 5) write(6,*) "NG"
end subroutine

subroutine sub31(pp)
integer :: pp
pointer :: pp
intent(inout) :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=6 
if (pp .ne. 6) write(6,*) "NG"
end subroutine
end
