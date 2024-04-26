call test()
print *,'pass'
end
subroutine test()
complex i
i=(3.4,-5.45)
i=(-1,-3)
i=(3.4,-5)
i=(-3.d13,6._8)
i=i
end
