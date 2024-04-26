call test()
print *,'pass'
end
subroutine test()
logical :: l
l = bgt(-1,1)
if (l.eqv..false.) print *,'err'
end
