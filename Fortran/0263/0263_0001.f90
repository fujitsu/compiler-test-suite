integer::k=1
integer,target::a(6,6)=1
logical::l1 = .true.
if(is_contiguous(a(1:1:1,1:2:2)).neqv..true.)print*,"101"
if(is_contiguous(a(1:1:k,1:1:k)).neqv..true.)print*,"102"
if(is_contiguous(a(2:2:2,2:2:2)).neqv..true.)print*,"105"
if(kind(is_contiguous(a(2:2:2,2:2:2))).ne.kind(l1))print*,"201"
if(kind(is_contiguous(a(2:2:2,2:2:2))).ne.kind(l1))print*,"202"
if(kind(is_contiguous(a(1:1:k,1:1:k))).ne.kind(l1))print*,"203"
call sub(a(1:2:2,1:2:2), a(1:2:2,1:2:2))
print*,"PASS"
 contains
 subroutine sub(a,b)
  integer,pointer,INTENT(IN):: a(:,:)
  integer:: b(:,:)
  if(is_contiguous(a).neqv..true.)print*,"103"
  if(is_contiguous(b).neqv..true.)print*,"104"
  if(kind(is_contiguous(a)).ne.kind(l1))print*,"105"
  if(kind(is_contiguous(b)).ne.kind(l1))print*,"106"
 end subroutine
 end

