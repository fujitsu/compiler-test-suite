module x1
contains
subroutine s(m1,m2,r,v)
complex(8)::m1(2,3),m2(3),r(2),v(2)
r(::1_2)=matmul(m1(::1_2,::1_2),m2(::1_2))+r(::1_2)+v(::1_2)
end subroutine
end
use x1
complex(8),target,dimension(5:15,15:25,25:35,35:45)::m1,m2,r,v
complex(8),pointer::p(:)
m1(14,24,26:28:2,36:40:2)=reshape((/(i,i=11,16)/),(/2,3/))
m2(14,24,27,36:40:2)=reshape((/(i,i=21,23)/),(/3/))
r(14,24,27,36:38:2)=reshape((/(i,i=31,32)/),(/2/))
v(14,24,27,36:38:2)=reshape((/(i,i=41,42)/),(/2/))
call s(m1(14,24,26:28:2,36:40:2),&
       m2(14,24,27,36:40:2),&
       r(14,24,27,36:38:2),&
       v(14,24,27,36:38:2))
p=>r(14,24,27,36:38:2)
if (any(abs(p-(/934,1002/))>0.00001_8))print *,'error-1'
print *,'pass'
end
