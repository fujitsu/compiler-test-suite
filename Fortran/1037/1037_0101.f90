call s1
print *,'pass'
end
subroutine s1
integer,target:: t(3)=(/1,2,3/)
call x(t(2:3),t(1:2))
if (any(t/=(/1,1,2/)))print *,'error' 
contains
subroutine x(z1,z2)
integer,target:: z1(:),z2(:)
z1=z2
end subroutine
end
