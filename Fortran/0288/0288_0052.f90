call test()
print *,'pass'
end
subroutine test()
double precision d
d = dble(1)
if (abs(d-1.0d0)>0.00001   )print *,'err'
end
