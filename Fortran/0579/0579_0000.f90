interface
function f(d)
integer :: f,d
end function
end interface
procedure(f),pointer :: p1
procedure(p1):: prc
procedure(p1),pointer:: test
procedure(test),pointer:: prc_ptr
test=>f
prc_ptr=>f
if(prc(4) .ne. 6)print*,"100"
if(test(3) .ne. 4)print*,"101"
if(prc_ptr(2) .ne. 3)print*,"102"
print *,'pass'
end
    
function f(d)
integer :: f,d
f=d+1
end function
function prc(d1)
integer :: prc,d1
prc=d1+2
end function


