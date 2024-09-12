interface
function f(d)
integer :: f,d
end function
end interface
procedure(f),pointer :: p1
procedure(p1):: act1
procedure(act1):: act2
procedure(act2):: act
call sub(act)
contains 
subroutine sub(prc)
procedure(p1):: prc
if(prc(2) .ne. 10)print*,"101"
print *,'pass'
end subroutine
end
    
function f(d)
integer :: f,d
f=d+1
end function
function act(d1)
integer :: act,d1
act=d1+8
end function


