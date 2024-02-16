module m
typety10(i1,i2,i3)
    integer,len ::i1=10,      i3=30
    integer,kind::      i2=20
    integer :: array1(i1:i1+2,i2:i2+2,i3:i3+2)
  end type

  type ,extends(ty10)::ty20(j1,j2,j3)
    integer,len::     j2=2
    integer,kind::j1=1,     j3=3
    integer :: array2(j1:j1+2,j2:j2+2,j3:j3+2)
    type(ty10(1,2,3))::str
    integer(kind=i2-17)::FF
  end type
TYPE(ty20(11,21,31,1,2,3)) :: a
TYPE(ty10(1,4,5)) :: b
contains
   subroutine sub3(aa)
   integer,contiguous::aa(:,:,:)
   if(loc(aa).eq.loc(a%array2))print*,"102"
   aa = aa + 10
   end subroutine sub3
end module m
use m
integer::k =1
a%array2 = 1
a%array1 = 1
call sub1(a%array2(::k,::k,::k))
k=2
call sub3(a%array1(::k,::k,::k))
if(any(a%array2 /= reshape([11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11],[3,3,3])))print*,"501"
if(any(a%array1 /= reshape([11, 1, 11, 1, 1 ,1, 11, 1, 11, 1, 1, 1, 1, 1, 1, 1 ,1, 1, 11, 1, 11, 1 ,1 ,1, 11, 1, 11],[3,3,3])))print*,"502",a%array1
print*,"pass"
contains
subroutine sub1(dmy)
  integer,contiguous::dmy(:,:,:)
  if(loc(dmy).ne.loc(a%array2))print*,"101"
  dmy = dmy + 10
end subroutine    
        end 
