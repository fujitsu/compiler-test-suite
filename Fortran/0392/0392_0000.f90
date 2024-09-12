subroutine s1
real(8)::a1(3,3),a2(3),a3(3)
a1=0.1
a2=0.2
a3=matmul(a1,a2)
end
call s1
print *,'pass'
end
