module m1
type ty3
 integer:: trg =  119
 integer:: trg2 = 109
 integer:: trg3(5) =  [1,2,3,4,5]
 complex:: trg5(3,3) = reshape([(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9)],[3,3])
 integer:: trg4 = 209
end type

type(ty3),target,private::objt
TYPE ty
  integer,pointer :: ptr2=>objt%trg
  integer,pointer :: ptr=>objt%trg2
  integer,pointer :: ptr3=>objt%trg4
  integer,pointer :: ptr4=>objt%trg
  integer,pointer ::ptr5(:)=>objt%trg3(1:5:2)
  real,pointer ::ptr6(:,:)=>objt%trg5(1:3:2,1:3:2)%re
  real,pointer ::ptr7(:,:)=>objt%trg5(1:3:1,1:3:1)%im
end type
TYPE ty2
  integer,pointer :: ptr2=>objt%trg
  integer,pointer :: ptr=>objt%trg2
  integer,pointer :: ptr3=>objt%trg4
  integer,pointer :: ptr4=>objt%trg
  integer,pointer ::ptr5(:)=>objt%trg3(1:5:2)
  real,pointer ::ptr6(:,:)=>objt%trg5(1:3:2,1:3:2)%re
end type
contains
subroutine sub
if(objt%trg.ne.12)print*,"101"
if(objt%trg2.ne.112)print*,"102"
if(objt%trg4.ne.1112)print*,"103"
if(any(objt%trg5.ne.reshape([(11,1),(2,2),(13,3),(4,4),(5,5),(6,6),(17,7),(8,8),(19,9)],[3,3])))print*,"101"
end
end

use m1
type(ty)::obj
type(ty2)::obj2
integer::trg=1,trg2=2
if(obj%ptr2.ne.119)print*,"131"
if(obj%ptr.ne.109)print*,"121"
if(obj%ptr3.ne.209)print*,"111"
if(obj%ptr4.ne.119)print*,"102"
if(any(obj%ptr5.ne.[1,3,5]))print*,"109"
if(any(obj%ptr6.ne.reshape([1,3,7,9],[2,2])))print*,"119"
if(any(obj2%ptr6.ne.reshape([1,3,7,9],[2,2])))print*,"119"
if(any(obj2%ptr5.ne.[1,3,5]))print*,"109"
obj%ptr2 =12
obj%ptr =112
obj%ptr3 =1112
if(obj2%ptr2.ne.12)print*,"101"
if(obj2%ptr.ne.112)print*,"101"
if(obj2%ptr3.ne.1112)print*,"101"
if(obj2%ptr4.ne.12)print*,"101"
obj2%ptr6 = reshape([11,13,17,19],[2,2])
call sub
if(trg.ne.1)print*,"901"
if(trg2.ne.2)print*,"901"
print*,"PASS"
end
      

