call test()
print *,'pass'
end
subroutine test()
real a
a = gamma(.5)
if (abs(a-1.77245390_4)>0.000001   )print *,'err'
a = log_gamma(.5)
if (abs(a-0.572364926_4)>0.000001   )print *,'err'
end
