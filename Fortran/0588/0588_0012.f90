type ty
character*2,pointer::ptr(:,:)
end type
integer,parameter::k =1

character*3,target::trg(3,3)=reshape(["abc", "efg","pqr","abc", "efg","pqr","abc","efg","pqr"],[3,3])
type(ty)::obj1
type(ty)::obj2
type(ty)::obj3 =ty(trg(1:3:2,1:3:2)(k:2))
character*2,pointer::ptr(:,:)=>trg(1:3:k,1:3:k)(1:2)
type ty2
   type(ty)::obj2 = ty(trg(1:3:1,1:3:1)(k:2))
end type
type(ty2)::obj4
data obj1 /ty(trg(1:3:k,1:3:k)(1:2))/
data obj2 /ty(trg(1:3:2,1:3:2)(1:k+1))/

if(any(obj1%ptr.ne.reshape(["ab", "ef","pq","ab","ef","pq","ab","ef","pq"],[3,3])))print*,"101"
if(any(obj2%ptr.ne.reshape(["ab","pq","ab","pq"],[2,2])))print*,"102"
if(any(obj4%obj2%ptr.ne.reshape(["ab", "ef","pq","ab","ef","pq","ab","ef","pq"],[3,3])))print*,"103"
if(any(obj3%ptr.ne.reshape(["ab","pq","ab","pq"],[2,2])))print*,"105"
if(any(ptr.ne.reshape(["ab", "ef","pq","ab","ef","pq","ab","ef","pq"],[3,3])))print*,"106"
print*,"PASS"
end
