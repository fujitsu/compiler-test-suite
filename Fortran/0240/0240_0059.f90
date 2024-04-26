call test()
print *,'pass'
end
subroutine test()
complex i
real,parameter ::p=1.0,q=1.0
i=(3.4,-5.45)
i=(-1,-3)
i=(3.4,-5)
i=(-3.d13,6._8)
i=(p,q)
i=i
end
