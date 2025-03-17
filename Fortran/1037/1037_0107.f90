call s1
print *,'pass'
end
subroutine s1
complex,target:: t(3)=(/(1,1),(2,2),(3,3)/)
call x(t(2:3),t(1:2),t(2:3))
if (any(abs(t-(/(1,1),(3,3),(5,5)/))>0.001))print *,'error' 
contains
subroutine x(z1,z2,z3)
complex,target:: z1(:),z2(:),z3(:)
z1=z2+z3
end subroutine
end
