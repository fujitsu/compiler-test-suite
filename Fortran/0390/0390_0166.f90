subroutine s1()
implicit none
real(8):: a(3)=[0.1,0.2,0.3]
call test(a)
contains
subroutine test(as)
real(8),CONTIGUOUS:: as(:)
real(8),CONTIGUOUS,pointer:: ap(:)
real(8):: ad(3)
integer k
allocate(ap(3))
ap=[0.1,0.2,0.3]
do k=1,3
 ad(k)=ap(k)+as(k) !
end do
if (any(abs(ad-[0.1,0.2,0.3]*2)>0.00001)) print *,101
ad=ap+as           !
if (any(abs(ad-[0.1,0.2,0.3]*2)>0.00001)) print *,102
end subroutine
end subroutine
call s1
print *,'pass'
end

