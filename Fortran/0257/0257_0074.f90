type ty
integer::aa(3,3)
integer::bb(3,3)
integer::cc(3,3)
end type ty
type ty2
type(ty):: obj(5)
end type ty2
type(ty2)::obj2
integer::k =1
integer::l=1
obj2%obj(1)%aa = reshape([1,2,3,4,5,6,7,8,9],[3,3])
obj2%obj(1)%bb = reshape([1,2,3,4,5,6,7,8,9],[3,3])
obj2%obj(1)%cc = reshape([1,2,3,4,5,6,7,8,9],[3,3])
call sub1(obj2%obj(l)%aa(1:3:k,1:3:k), obj2%obj(l)%bb(1:3:k,1:3:k),obj2%obj(l)%cc(1:3:k,1:3:k))
if(any(obj2%obj(1)%aa /=reshape([20,20,20,20,20,20,20,20,20],[3,3])))print*,"101"
if(any(obj2%obj(1)%bb /=reshape([40,40,40,40,40,40,40,40,40],[3,3])))print*,"106"
if(any(obj2%obj(1)%cc /=reshape([60,60,60,60,60,60,60,60,60],[3,3])))print*,"107"
print*,"pass"
contains
subroutine sub1(dmy1,dmy2,dmy3)
integer::dmy1(3,3)
integer,contiguous::dmy2(:,:)
integer::dmy3(3,3)
 if(loc(dmy1).ne.loc(obj2%obj(1)%aa))print*,"103",dmy1
 if(loc(dmy2).ne.loc(obj2%obj(1)%bb))print*,"104",dmy2
 if(loc(dmy3).ne.loc(obj2%obj(1)%cc))print*,"109",dmy3
 dmy1 = 10
 dmy2 = 20
 dmy3 = 30
 call sub2(dmy1,dmy2,dmy3)
end subroutine sub1
subroutine sub2(dmy1,dmy2,dmy3)
integer::dmy1(3,3)
integer,contiguous::dmy2(:,:)
integer::dmy3(3,3)
 if(loc(dmy1).ne.loc(obj2%obj(1)%aa))print*,"103",dmy1
 if(loc(dmy2).ne.loc(obj2%obj(1)%bb))print*,"104",dmy2
 if(loc(dmy3).ne.loc(obj2%obj(1)%cc))print*,"109",dmy2
 dmy1 = dmy1 +10
 dmy2 = dmy2 +20
 dmy3 = dmy3 +30
end subroutine sub2
end
