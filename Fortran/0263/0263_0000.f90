integer::k=1
integer,target::a(6,6)=1
integer,target::b(1,1)=1
if(is_contiguous(a(1:1:1,1:2:2)).neqv..true.)print*,"101"
if(is_contiguous(a(1:1:k,1:1:k)).neqv..true.)print*,"102"
if(is_contiguous(a(2:2:2,2:2:2)).neqv..true.)print*,"105"
if(is_contiguous(b(::2,::2)).neqv..true.)print*,"106"
if(is_contiguous(b(::k+1,::k+1)).neqv..true.)print*,"106"
call sub(a(::1,::1), b(::2,::2))
call sub(b(::k,::k), b(::k+1,::k+1))
print*,"PASS"
 contains
 subroutine sub(a,b )
  integer,pointer,INTENT(IN):: b(:,:)
  integer:: a(:,:)
  if(is_contiguous(a).neqv..true.)print*,"103"
  if(is_contiguous(b).neqv..true.)print*,"104"
 end subroutine
 end

