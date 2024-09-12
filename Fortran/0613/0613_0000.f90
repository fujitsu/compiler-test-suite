call test()
print *,'pass'
end
subroutine test()
end
subroutine sub(zero)
real, intent(inout) :: zero
zero = 1.0 / zero
end
