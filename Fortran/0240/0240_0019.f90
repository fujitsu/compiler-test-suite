call test()
print *,'pass'
end
subroutine test()
real, pointer :: a, b, e
real, target :: c, f
logical :: l
a => c
b => c
e => f
l = associated (a)
if (l.neqv..true.) print *,'err'
l = associated (a, c)
if (l.neqv..true.) print *,'err'
l = associated (a, b)
if (l.neqv..true.) print *,'err'
l = associated (a, f)
if (l.neqv..false.) print *,'err'
l = associated (a, e)
if (l.neqv..false.) print *,'err'
end
