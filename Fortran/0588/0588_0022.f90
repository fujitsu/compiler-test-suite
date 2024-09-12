type ty
integer,pointer::jj
character(:),pointer::ch
end type

type ,extends(ty)::ty1
 integer,pointer::ii(:)
 character(:),pointer::ch2
end type



integer,target::trg(10)=[1,2,3,4,5,6,7,8,9,10]
character*2,target::ctrg='aa'
type(ty1)::obj1 = ty1(trg(2),ctrg,trg(1:5:1), ctrg(1:1))
type(ty1)::obj2
data obj2 /ty1(trg(2),ctrg(1:1),trg(1:5:1), ctrg)/
if(len(obj1%ch).ne.2)print*,"101"
if(len(obj2%ch).ne.1)print*,"102"
if(len(obj1%ch2).ne.1)print*,"103"
if(len(obj2%ch2).ne.2)print*,"104"

print*,"PASS"

end
