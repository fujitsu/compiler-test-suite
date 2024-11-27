integer,pointer,dimension(:) :: pp
call sub1(pp)
call sub2(pp)
call sub3(pp)
call sub4(pp)
call sub5(pp)
call sub6(pp)
print *,'pass'
contains

subroutine sub1(pp)
integer,intent(out),dimension(:) :: pp
pointer :: pp
integer,target :: ii(1)
allocate(pp(1))
pp=>ii
pp(1)=1 
if (pp(1) .ne. 1) write(6,*) "NG"
end subroutine

subroutine sub2(pp)
integer,pointer,dimension(:) :: pp
intent(out) :: pp
integer,target :: ii(2)
allocate(pp(2))
pp=>ii
pp(2)=2 
if (pp(2) .ne. 2) write(6,*) "NG"
end subroutine

subroutine sub3(pp)
pointer :: pp
integer,intent(out),dimension(:) :: pp
integer,target :: ii(1)
allocate(pp(1))
pp=>ii
pp(1)=1 
if (pp(1) .ne. 1) write(6,*) "NG"
end subroutine

subroutine sub4(pp)
intent(out) :: pp
integer,pointer,dimension(:) :: pp
integer,target :: ii(2)
allocate(pp(2))
pp=>ii
pp(2)=2 
if (pp(2) .ne. 2) write(6,*) "NG"
end subroutine

subroutine sub5(pp)
integer,pointer,intent(out),dimension(:) :: pp
integer,target :: ii(3)
allocate(pp(3))
pp=>ii
pp(3)=3 
if (pp(3) .ne. 3) write(6,*) "NG"
end subroutine

subroutine sub6(pp)
integer,dimension(:),intent(out),pointer :: pp
integer,target :: ii(4)
allocate(pp(4))
pp=>ii
pp(4)=4 
if (pp(4) .ne. 4) write(6,*) "NG"
end subroutine
end
