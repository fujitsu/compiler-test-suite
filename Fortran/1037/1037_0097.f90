call s1
print *,'pass'
end
subroutine s1
character*3,target:: t='123'
call x(t(2:3),t(1:2))
if (t/='112')print *,'error' 
contains
subroutine x(z1,z2)
character(*),target:: z1,z2
z1=z2
end subroutine
end
