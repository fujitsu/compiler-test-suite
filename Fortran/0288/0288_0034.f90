call test()
print *,'pass'
end
subroutine test()
logical :: l
l = btest(1,0)
if (l.neqv..true. )print *,'err'
l = btest(4,1)
if (l.neqv..false. )print *,'err'
l = btest(32,5)
if (l.neqv..true. )print *,'err'
end
