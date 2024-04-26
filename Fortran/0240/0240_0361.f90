call s()
print *,'pass'
end
subroutine s()
real :: a
a = exp(2.0)
if (a>88.722E0   )print *,'err'
end
