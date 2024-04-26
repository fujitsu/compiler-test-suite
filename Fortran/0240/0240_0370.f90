call s()
print *,'pass'
end
subroutine s()
a = fraction(3.8)
if (a>100.0_4   )print *,'err'
end
