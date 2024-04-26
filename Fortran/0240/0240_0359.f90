call s()
print *,'pass'
end
subroutine s()
r = erf(.5)
if (r>1.1   )print *,'err'
end
