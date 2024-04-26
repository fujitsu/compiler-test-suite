integer::k=1
logical::l1 =.true.
integer,parameter::a(6,6) = 12
integer,parameter::b(3,3,3) = 10
integer,parameter::c(5) = 1
logical,parameter::c1 = is_contiguous(a(1:1:1,1:1:1))
logical,parameter::c2 = is_contiguous(b(1:2:2,1:2:2,1:2:2))
logical,parameter::c3 = is_contiguous(c(1:1:1))
logical,parameter::c4 = is_contiguous(c(1:1))
logical,parameter::c5 = is_contiguous(c([1]))
logical,parameter::c6 = is_contiguous(c(1:-1))
integer,parameter::k1 = kind(is_contiguous(a(1:1:1,1:1:1)))
integer,parameter::k2 = kind(is_contiguous(b(1:2:2,1:2:2,1:2:2)))
integer,parameter::k3 = kind(is_contiguous(c(1:1:1)))
integer,parameter::k4 = kind(is_contiguous(c(1:1)))
integer,parameter::k5 = kind(is_contiguous(c([1])))
integer,parameter::k6 = kind(is_contiguous(c(1:-1)))
if(c1.neqv..true.)print*,"201"
if(c2.neqv..true.)print*,"202"
if(c3.neqv..true.)print*,"203"
if(c4.neqv..true.)print*,"204"
if(c5.neqv..true.)print*,"205"
if(c6.neqv..true.)print*,"206"
if(k1.ne.kind(l1))print*,"301"
if(k2.ne.kind(l1))print*,"302"
if(k3.ne.kind(l1))print*,"303"
if(k4.ne.kind(l1))print*,"304"
if(k5.ne.kind(l1))print*,"305"
if(k6.ne.kind(l1))print*,"306"
if(is_contiguous(a(1:1:1,1:2:2)).neqv..true.)print*,"101"
if(is_contiguous(a(1:1:k,1:1:k)).neqv..true.)print*,"102"
if(is_contiguous(a(2:2:2,2:2:2)).neqv..true.)print*,"105"
if(is_contiguous(c(1:-1)).neqv..true.)print*,"101"
call sub(a(1:2:2,1:2:2), c(1:-1))
print*,"PASS"
 contains
 subroutine sub(a,b)
  integer:: a(:,:)
  integer:: b(:)
  if(is_contiguous(a).neqv..true.)print*,"303"
  if(is_contiguous(b).neqv..true.)print*,"304",is_contiguous(b)
 end subroutine
 end

