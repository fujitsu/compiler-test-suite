interface
subroutine sub1(dmy1,dmy2,dmy3)
integer::dmy1(2,2)
integer,contiguous::dmy2(:,:)
integer::dmy3(2,2)
end subroutine sub1
subroutine sub2(dmy1,dmy2,dmy3)
integer::dmy1(2,2)
integer::dmy2(2,2)
integer::dmy3(2,2)
end subroutine sub2
end interface
type ty
integer::aa(3,3)
integer::bb(3,3)
integer::cc(3,3)
end type ty
type(ty):: obj
integer::k =2
obj%aa = reshape([1,2,3,4,5,6,7,8,9],[3,3])
obj%bb = reshape([1,2,3,4,5,6,7,8,9],[3,3])
obj%cc = reshape([1,2,3,4,5,6,7,8,9],[3,3])
call sub1(obj%aa(1:3:k,1:3:2), obj%bb(1:3:2,1:3:k),obj%cc(1:3:k,1:3:k))
if(any(obj%aa /=reshape([20,2,20,4,5,6,20,8,20],[3,3])))print*,"101"
if(any(obj%bb /=reshape([40,2,40,4,5,6,40,8,40],[3,3])))print*,"106",obj%bb
if(any(obj%cc /=reshape([60,2,60,4,5,6,60,8,60],[3,3])))print*,"107"
print*,"pass"
end
subroutine sub1(dmy1,dmy2,dmy3)
integer::dmy1(2,2)
integer,contiguous::dmy2(:,:)
integer::dmy3(2,2)
 dmy1 = 10
 dmy2 = 20
 dmy3 = 30
call sub2(dmy1,dmy2,dmy3)
end subroutine sub1
subroutine sub2(dmy1,dmy2,dmy3)
integer::dmy1(2,2)
integer::dmy2(2,2)
integer::dmy3(2,2)
 dmy1 = dmy1 +10
 dmy2 = dmy2 +20
 dmy3 = dmy3 +30
end subroutine sub2
