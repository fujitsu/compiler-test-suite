subroutine s1
integer :: k1(2:3)=[1,2]
integer,allocatable::k2(:),k3(:)
allocate(k2,k3,source=k1)
if (lbound(k2,dim=1)/=2) print *,101
if (lbound(k3,dim=1)/=2) print *,102
end
call s1
print *,"pass"
end
