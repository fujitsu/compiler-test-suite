call test()
print *,'pass'
end
subroutine test()
double precision :: dub
dub = dprod(3.e2,4.4e4)
if (abs(dub-13.2d6)>0.00001   )print *,'err'
end
