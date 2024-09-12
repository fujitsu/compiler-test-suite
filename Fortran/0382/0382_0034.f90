complex::q(1,1,6)
q(:,:,2::2)=reshape([(1,1),(2,2),(3,3)],[1,1,3])
call s1(q(:,:,2::2))
print *,'pass'
contains
subroutine s1(q)
complex,allocatable::b(:,:,:)
complex::q(2:,:,:)
allocate(b,source=q)
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,6101,b
if (any(lbound(b)/=[2,1,1]))print *,6102
end subroutine
end 
