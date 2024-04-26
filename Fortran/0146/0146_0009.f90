integer,target::a1=1
call s1(a1,a1)
print *,'pass'
contains
subroutine s1(a1,a2)
integer,target::a1,a2
do k=2,2
if (a1/=1) print *,1
a2=3
end do
do k=1,2
if (a1/=3) print *,2
end do
end subroutine
end
