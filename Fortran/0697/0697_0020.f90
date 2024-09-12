call s1
call s2
print *,'pass'
contains
subroutine s1
integer(1), pointer :: p1 
integer(1), target :: i1 
integer(2), pointer :: p2 
integer(2), target :: i2 
integer(4), pointer :: p4
integer(4), target :: i4 
integer(8), pointer :: p8 
integer(8), target :: i8 
p1 => i1 
p2 => i2 
p4 => i4 
p8 => i8
p1 = 1
p2 = 2
p4 = 3
p8 = 4
if(sizeof(p1)/=sizeof(i1)) print *,'err1'
if(sizeof(p2)/=sizeof(i2)) print *,'err2'
if(sizeof(p4)/=sizeof(i4)) print *,'err3'
if(sizeof(p8)/=sizeof(i8)) print *,'err4'
end subroutine
subroutine s2
integer, pointer :: p(:) 
integer, target :: i(10) 
allocate(p(10))
p => i 
p = 12 
if(sizeof( p)/=sizeof(i)) print *,'err11'
end subroutine
end
