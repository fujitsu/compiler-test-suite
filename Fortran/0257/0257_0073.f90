type ty
integer,pointer::aa(:)
integer,pointer::bb(:)
end type ty
type(ty),target:: obj
type(ty),pointer::obj2
integer,target::aa1(10) = reshape([1,2,3,4,5,6,7,8,9,10],[10])
integer,target::bb1(10) = reshape([1,2,3,4,5,6,7,8,9,10],[10])
integer::k =1
obj%aa=>aa1(:)
obj%bb=>bb1(:)
obj2=>obj
k= fun(obj2%aa(1:10:1), obj%aa(::k))
print*,"pass"
contains
function fun(dmy1,dmy2)
integer::dmy1(10)
integer::dmy2(10)
integer::fun
 if(loc(dmy1).ne.loc(obj%aa))print*,"103"
 if(loc(dmy2).ne.loc(obj%aa))print*,"104"
fun =1
end function
end
