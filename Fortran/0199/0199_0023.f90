type ty
 integer::arr(5)
 integer::arr2(2,2)
 integer::k
 integer,pointer::ptr
 integer,pointer::ptr2(:)
 character(len=3),pointer::ptr3
end type

type(ty)::obj
integer,target::t1=20
integer,target::t2(5)=20
character*3,target::ch = 'abc'
integer::arr9(5)

data arr9,obj%ptr,obj%arr,obj%ptr2  /1,2,3,4,5,t2(1),5*1,t2/

print*,"pass"
end
