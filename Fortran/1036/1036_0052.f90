module m1
character(len=2),parameter::z(25)=(/&
'01','02','03','04','05','06','07','08','09','10',&
'11','12','13','14','15','16','17','18','19','20',&
'21','22','23','24','25'&
/)
character(len=2),target::a(5,5)=reshape(z,(/5,5/))
type x
 character(2),pointer::w(:,:)
end type
type (x)::v
contains
subroutine s(v)
type(x)::v
call sub(4,v%w(2:5,2)(2:2))
end subroutine
subroutine sub(im,w)
character(*) w(im)
  if (any((/w(1:4)/)/=z(7:10)(2:2)))print *,'error-3',w
end subroutine
end
use m1
v%w=> a
call s(v)
print *,'pass'
end
