module m1
integer::i2=2
character(:),pointer::pa
character(:),pointer::pb(:,:)
character(2),target::t(2,2,3)=reshape((/'ab','cd','ef','gh','ij','kl','mn','op','qr','st','uv','wx'/),(/2,2,3/))
character(2),target::z(2,3)=reshape((/'ef','gh','mn','op','uv','wx'/),(/2,3/))
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
if (any(adjustl(p2)/=z))print *,'error-201'
if (any(adjustr(p2)/=z))print *,'error-201'
if (len(adjustl(p2))/=2)print *,'error-201'
if (any(len_trim(adjustl(p2))/=2))print *,'error-201'
if (any(scan(p2,'x')/=reshape((/0,0,0,0,0,2/),(/2,3/))))print *,'error-202',scan(p2,'x')
if (any(index(p2,'x')/=reshape((/0,0,0,0,0,2/),(/2,3/))))print *,'error-203',index(p2,'x')
if (any(llt (p2,p2)))print *,'error-201'
if (any(lgt (p2,p2)))print *,'error-201'
if (   repeat (p2(2,3),2)/='wxwx')print *,'error-201'
if (   repeat (p2(2,3),i2)/='wxwx')print *,'error-201'
if (any(verify(p2,'w')/=reshape((/1,1,1,1,1,2/),(/2,3/))))print *,'error-204',verify(p2,'w')
if (.not.present(p2))print *,'error201'
if (.not.present(p2))print *,'error201'
end subroutine
end
use m1
do k=1,100
call s1(pa,pb)
end do
print *,'pass'
end
