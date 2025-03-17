call s1
print *,'pass'
end
subroutine s1
complex,target:: t(3)=(/(1,1),(2,2),(3,3)/)
call x(t(2:3),t(1:2))
if (any(abs(t-(/(1,1),(1,1),(2,2)/))>0.001))print *,'error' 
contains
subroutine x(z1,z2)
complex,target:: z1(:),z2(:)
z1=z2
end subroutine
end
