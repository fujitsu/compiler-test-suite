module x1
contains
subroutine s(m1,m2,r,v)
real(8)::m1(2,4),m2(:,:),r(2,3),v(2,3)
r=matmul(m1,m2)+r+v
end subroutine
end
use x1
real(8),target,dimension(5:15,15:25,5:35,5:45)::m1,m2,r,v
real(8),pointer::p(:,:)
m1(14,24,26:28:2,21:28:2)=reshape((/(i,i=11,18)/),(/2,4/))
m2(14,24,21:28:2,11:16:2)=reshape((/(i,i=21,32)/),(/4,3/))
 r(14,24,26:28:2,36:40:2)=reshape((/(i,i=31,36)/),(/2,3/))
 v(14,24,26:28:2,36:40:2)=reshape((/(i,i=41,46)/),(/2,3/))
call s(m1(14,24,26:28:2,21:28:2),&
       m2(14,24,21:28:2,11:16:2),&
        r(14,24,26:28:2,36:40:2),&
        v(14,24,26:28:2,36:40:2))  
p=>r(14,24,26:28:2,36:40:2)
if (any(abs((/p/)-(/1342,1434,1570,1678,1798,1922/))>0.00001_8))print *,'error-1'
print *,'pass'
end
