integer,parameter::c(5) = 1
integer::c2(5) = [1,2,3,4,5]
logical,parameter::c6 = is_contiguous(c(:1:2))
if(c6.neqv..true.)print*,"206",c6
if(is_contiguous(c(:1:2)).neqv..true.)print*,"101"
call sub(c2(1:2:2))
print*,"PASS"
 contains
 subroutine sub(b)
  integer:: b(:)
  if(is_contiguous(b).neqv..true.)print*,"304",is_contiguous(b)
 end subroutine
 end

