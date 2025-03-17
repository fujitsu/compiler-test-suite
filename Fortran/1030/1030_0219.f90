module x1
contains
subroutine s(m1,m2,r,v)
real(8)::m1(3,4),m2(3),r(2),v(2)
r=matmul(transpose(m1(:,::2)),m2)+r+v
end subroutine
end
use x1
real(8),target,dimension(5:15,15:25,25:35,35:45)::m1,m2,r,v
real(8),pointer::p(:)
m1(14,24,26:30:2,36:39:1)=reshape((/(i,i=11,22)/),(/3,4/))
m2(14,24,27,36:40:2)=reshape((/(i,i=21,23)/),(/3/))
r(14,24,27,36:38:2)=reshape((/(i,i=31,32)/),(/2/))
v(14,24,27,36:38:2)=reshape((/(i,i=41,42)/),(/2/))
call s(m1(14,24,26:30:2,36:39:1),&
       m2(14,24,27,36:40:2),&
       r(14,24,27,36:38:2),&
       v(14,24,27,36:38:2))
p=>r(14,24,27,36:38:2)
if (any(abs(p-(/866,1264/))>0.00001_8))print *,'error-1'
print *,'pass'
end
