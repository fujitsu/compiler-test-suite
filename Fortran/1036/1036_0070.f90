module m1
character(2),target::a(5,1,1,1,5)=reshape(&
(/'01','02','03','04','05','06','07','08','09','10',&
  '11','12','13','14','15','16','17','18','19','20',&
  '21','22','23','24','25'/)                        & 
,(/5,1,1,1,5/))
character(2),target::aa(3*5)=&
(/'01','03','05','06','08','10',&
  '11','13','15','16','18','20',&
  '21','23','25'/) 
 character(2)::w1(5,1,1,1,5)
integer::j1=1,j2=2,j3=3,j4=4,j5=5
contains
subroutine s(w,i)
character(*)::w(:,:,:,:,:)
call sub(w(:,1,1,1,:),i)
end subroutine
subroutine sub(w,i)
character(*) w(*)
if (i==1) then
  if (any((/w(1:25)/)/=(/a/)))print *,'error-c',i
else 
  if (any((/w(1:15)/)/=aa))print *,'error-d',i
endif
end subroutine
end
use m1
w1= a
call s(w1,1)
call s(w1(1:5:2,:,:,:,:),2)
print *,'pass'
end
