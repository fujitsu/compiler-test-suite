module m1
character(2),target::a(5,5)=reshape(&
(/'01','02','03','04','05','06','07','08','09','10',&
  '11','12','13','14','15','16','17','18','19','20',&
  '21','22','23','24','25'/)                        & 
,(/5,5/))
 character(2)::w1(5,5)
integer::j1=1,j2=2,j3=3,j4=4,j5=5
contains
subroutine s(w,i)
character(*)::w(:,:)
if (i==1) then
call sub(w(:,2),i)
call sub(w(1:5,2),i)
call sub(w(j1:j5,j2),i)
call sub(w(j1:j5:1,j2),i)
call sub(w(j1:j5:j1,j2),i)
call sub(w(j2-j1:j1+j2+2,j4-j2-j1+j1),i)
else
call sub(w(:,2),i)
call sub(w(1:3,2),i)
call sub(w(j1:j3,j2),i)
call sub(w(j1:j3:1,j2),i)
call sub(w(j1:j3:j1,j2),i)
call sub(w(j2-j1:j1+2,j4-j2-j1+j1),i)
endif
end subroutine
subroutine sub(w,i)
character(2) w(*)
if (i==1) then
  if (any((/w(1:5)/)/=(/'06','07','08','09','10'/)))print *,'error-c',i
else 
  if (any((/w(1:3)/)/=(/'06','08','10'/)))print *,'error-d',i
endif
end subroutine
end
use m1
w1= a
call s(w1,1)
call s(w1(1:5:2,:),2)
print *,'pass'
end
