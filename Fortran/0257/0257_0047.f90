module m1
interface
subroutine sub1(dmy1,dmy2)
integer::dmy1(2,2)
integer::dmy2(3,3)
end subroutine sub1
subroutine sub2(dmy1,dmy2)
integer::dmy1(2,2)
integer::dmy2(3,3)
end subroutine sub2
end interface
type ty
integer,pointer::aa(:,:)
integer,pointer::bb(:,:)
end type ty
type(ty):: obj
end module
use m1
integer::k =2
integer::l =1
integer,target::target1(3,3)  = reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::target2(3,3)  = reshape([1,2,3,4,5,6,7,8,9],[3,3])
obj%bb =>target2
obj%aa =>target1
call sub1(obj%aa(1:3:2,1:3:k), obj%bb(1:3:1,1:3:l))
call sub2(obj%aa(1:3:2,1:3:2), obj%bb(1:3:1,l:3:1))
if(any(obj%aa /=reshape([ 20, 2, 20, 4, 5, 6, 20, 8, 20],[3,3])))print*,"101",obj%aa
if(any(obj%bb /=reshape([50,50,50,50,50,50,50,50,50],[3,3])))print*,"106",obj%bb
print*,"pass"
end
subroutine sub1(dmy1,dmy2)
integer::dmy1(2,2)
integer::dmy2(3,3)
 dmy1 = 10
 dmy2 = 30
end subroutine sub1
subroutine sub2(dmy1,dmy2)
integer::dmy1(2,2)
integer::dmy2(3,3)
 dmy1 = dmy1 +10
 dmy2 = dmy2 +20
end subroutine sub2
