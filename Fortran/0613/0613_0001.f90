call s
print *,'pass'
end
subroutine s
end
subroutine sub_overflow(huge_real)
real, intent(inout) :: huge_real
huge_real = huge_real * 2.0
end
subroutine sub_underflow(tiny_real)
real, intent(inout) :: tiny_real
tiny_real = tiny_real / 1.0e+08
end
