module m1
integer::i2=2
character(:),pointer::pa
character(:),pointer::pb(:,:)
character(2),target::t(2,2,3)=reshape((/'ab','cd','ef','gh','ij','kl','mn','op','qr','st','uv','wx'/),(/2,2,3/))
contains
subroutine s1(p1,p2)
character(:),pointer,optional::p1
character(:),pointer,optional::p2(:,:)
p1=>t(2,2,3)
if (adjustl(p1)/='wx')print *,'error-101'
if (adjustr(p1)/='wx')print *,'error-101'
if (len(adjustl(p1))/=2)print *,'error-101'
if (len_trim(adjustl(p1))/=2)print *,'error-101'
if (scan(p1,'x')/=2)print *,'error-101'
if (index(p1,'x')/=2)print *,'error-101'
if (trim   (p1)/='wx')print *,'error-101'
if (llt (p1,p1))print *,'error-101'
if (lgt (p1,p1))print *,'error-101'

if (repeat (p1,2)/='wxwx')print *,'error-101'
if (repeat (p1,i2)/='wxwx')print *,'error-101'

if (verify(p1,'w')/=2)print *,'error-101'
if (.not.present(p1))print *,'error101'
if (.not.present(p1))print *,'error101'

p2=>t(:,2,:)
end subroutine
end
use m1
call s1(pa,pb)
print *,'pass'
end

