call s1
print *,'pass'
end
subroutine s1
integer,target:: t(3)=(/1,2,3/)
call x(t(2:3),t(1:2),t(2:3))
if (any(t/=(/1,3,5/)))print *,'error' 
contains
subroutine x(z1,z2,z3)
integer,target:: z1(:),z2(:),z3(:)
z1=z2+z3
end subroutine
end
