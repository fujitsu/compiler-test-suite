call s
print *,'pass'
end
subroutine s
real, pointer :: a, b, c
real, target :: t, u, v
a=>t; b=>u; c=>v
if(associated(a).neqv..true.) print *,'err1'
if(associated(b).neqv..true.) print *,'err2'
if(associated(c).neqv..true.) print *,'err3'
nullify (a, b, c)
if(associated(a).neqv..false.) print *,'err4'
if(associated(b).neqv..false.) print *,'err5'
if(associated(c).neqv..false.) print *,'err6'
end
