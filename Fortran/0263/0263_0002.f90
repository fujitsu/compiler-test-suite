integer::k=1
integer,target::a(6,6)=1
if(is_contiguous(a(1:1:1,1:2:2)).neqv..true.)print*,"101"
if(is_contiguous(a(1:1:k,1:1:k)).neqv..true.)print*,"102"
if(is_contiguous(a(2:2:2,2:2:2)).neqv..true.)print*,"105"
call sub(a(1:2:2,1:2:2))
print*,"PASS"
 contains
 subroutine sub(a)
  integer:: a(1,1)
  if(is_contiguous(a).neqv..true.)print*,"103"
 end subroutine
 end

