integer,target::a1(2)=[1,2]
call s1(a1,a1)
print *,'pass'
contains
subroutine s1(a1,a2)
integer,target::a1(:),a2(:)
do k=2,2
if (a1(k)/=2) print *,1
a2(k)=3
end do
do k=1,2
if (k==1) then
if (a1(k)/=1) print *,2
else
if (a1(k)/=3) print *,3
endif
end do
end subroutine
end
