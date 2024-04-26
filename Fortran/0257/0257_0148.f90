type ty
integer,pointer :: ptr(:,:)
integer,pointer :: ptr2(:)
end type
type(ty)::obj
integer,target::t1(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::t2(5) =reshape([1,2,3,4,5],[5])
integer,target::t3(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::t4(5) =reshape([1,2,3,4,5],[5])
integer::p=1
obj%ptr => t1(:,:)
obj%ptr2 => t2(:)
 call sub(p,obj%ptr,obj%ptr2) 
 if(any(t1.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"101"
 if(any(t2.ne.reshape([11,12,13,14,15],[5])))print*,"102"
obj%ptr => t3(:,:)
obj%ptr2 => t4(:)
 call sub(p,obj%ptr,obj%ptr2)
 if(any(t3.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"103",t3
 if(any(t4.ne.reshape([11,12,13,14,15],[5])))print*,"104",t4
 if(p.ne.21)print*,"105",p
 print*,"Pass"
  contains
  subroutine sub(p,dmy,dmy2)
  integer,contiguous:: dmy(:,:)
  integer,contiguous:: dmy2(:)
  integer:: p
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"106"
  if(loc(dmy).ne.loc(obj%ptr))print*,"101"
  if(any(dmy2.ne.reshape([1,2,3,4,5],[5])))print*,"107"
  if(loc(dmy2).ne.loc(obj%ptr2))print*,"108"
  dmy = dmy + 10
  dmy2 = dmy2 + 10
  p = p + 10
  end subroutine
  end

