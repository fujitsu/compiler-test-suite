subroutine s1
integer(1),parameter::n1=2
call s11
contains
subroutine s11
character(*),parameter,dimension(1):: x1= &
 [ character(n1):: '1']
if (x1(1)/='1 ')print *,101
end subroutine
end
call s1
print *,'pass'
end
