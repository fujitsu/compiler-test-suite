integer,pointer :: pp
call sub1(pp)
call sub2(pp)
call sub3(pp)
call sub4(pp)
call sub5(pp)
call sub6(pp)
print *,'pass'
contains

subroutine sub1(pp)
integer,intent(out) :: pp
pointer :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=1 
if (pp .ne. 1) write(6,*) "NG"
end subroutine

subroutine sub2(pp)
integer,pointer :: pp
intent(out) :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=2 
if (pp .ne. 2) write(6,*) "NG"
end subroutine

subroutine sub3(pp)
pointer :: pp
integer,intent(out) :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=1 
if (pp .ne. 1) write(6,*) "NG"
end subroutine

subroutine sub4(pp)
intent(out) :: pp
integer,pointer :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=2 
if (pp .ne. 2) write(6,*) "NG"
end subroutine

subroutine sub5(pp)
integer,pointer,intent(out) :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=3 
if (pp .ne. 3) write(6,*) "NG"
end subroutine

subroutine sub6(pp)
integer,intent(out),pointer :: pp
integer,target :: ii
allocate(pp)
pp=>ii
pp=4 
if (pp .ne. 4) write(6,*) "NG"
end subroutine
end
