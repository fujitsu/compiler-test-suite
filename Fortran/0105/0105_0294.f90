module x1
contains
subroutine s(m1,m2,r,v)
complex(8)::m1(4,3),m2(6),r(4),v(4)
r(::2)=matmul(m1(::2,:),m2(::2))+r(::2)+v(::2)
end subroutine
end
use x1
complex(8),target,dimension(5:15,15:25,25:35,35:45)::m1,m2,r,v
complex(8),pointer::p(:)
m1(14,24,26:29:1,36:40:2)=reshape((/(i,i=11,32)/),(/4,3/))
m2(14,24,27,36:41:1)=reshape((/(i,i=21,26)/),(/6/))
r(14,24,27,36:39:1)=reshape((/(i,i=31,34)/),(/4/))
v(14,24,27,36:39:1)=reshape((/(i,i=41,44)/),(/4/))
call s(m1(14,24,26:29:1,36:40:2),&
       m2(14,24,27,36:41:1),&
       r(14,24,27,36:39:1),&
       v(14,24,27,36:39:1))
p=>r(14,24,27,36:38:2)
if (any(abs(p-(/1123,1265/))>0.00001_8))print *,'error-1'
print *,'pass'
end
