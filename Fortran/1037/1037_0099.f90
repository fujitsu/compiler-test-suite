call s1
print *,'pass'
end
subroutine s1
character*6,target:: t='123xxx'
call x(t(2:),t(1:2),t(2:))
if (t/='11223x')print *,'error' 
contains
subroutine x(z1,z2,z3)
character(*),target:: z1,z2,z3
z1=z2//z3
end subroutine
end
