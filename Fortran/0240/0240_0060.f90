call test()
print *,'pass'
end
subroutine test()
complex :: x
x = conjg ((2.1, -3.2))
if (abs(x-(2.1,3.2)) > 0.00001)print *,'err'
end
