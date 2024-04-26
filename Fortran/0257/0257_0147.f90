type ty
integer,pointer :: ptr(:,:)
integer,pointer :: ptr2(:,:)
end type
 type(ty)::obj
 allocate(obj%ptr(3,3))
 allocate(obj%ptr2(2,2))
 obj%ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
 obj%ptr2 = reshape([1,2,3,4],[2,2])
  call sub2(obj%ptr, obj%ptr2)
 if(any(obj%ptr.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"101",obj%ptr
 if(any(obj%ptr2.ne.reshape([11,12,13,14],[2,2])))print*,"102"
  Print*,"PASS"
  contains
  subroutine sub2(p,p1)
  integer,contiguous::p(:,:)
  integer,contiguous::p1(:,:)
  if(loc(p).ne.loc(obj%ptr))print*,"103"
  if(loc(p1).ne.loc(obj%ptr2))print*,"104"
  p = p +10
  p1 = p1 +10
  end subroutine
end

