integer,parameter::c(-3:-1,-3:-1) = reshape([1,2,3,4,5,6,7,8,9],[3,3])
logical,parameter::c6 = is_contiguous(c(-3:-2:2,-3:-2:2))
integer,target::t(3,3) = reshape([1,2,3,4,5,6,7,8,9],[3,3])
if(c6.neqv..true.)print*,"206",c6
if(is_contiguous(c(-3:-2:2,-3:-2:2)).neqv..true.)print*,"101"
call sub(c(-3:-2:2,-3:-2:2),t(1:1:1,1:1:1))
print*,"PASS"
 contains
 subroutine sub(b,d)
  integer:: b(:,:)
  integer:: d(:,:)
  if(size(b).ne.1)print*,"309"
  if(size(d).ne.1)print*,"319"
  if(is_contiguous(b).neqv..true.)print*,"307",is_contiguous(b)
  if(is_contiguous(d).neqv..true.)print*,"304",is_contiguous(d)
  call sub2(b(1:2:2,1:2:2),d)
 end subroutine
 subroutine sub2(b,d)
  integer:: b(:,:)
  integer:: d(:,:)
  if(size(b).ne.1)print*,"409"
  if(size(d).ne.1)print*,"419"
  if(is_contiguous(b).neqv..true.)print*,"407",is_contiguous(b)
  if(is_contiguous(d).neqv..true.)print*,"404",is_contiguous(d)
 end
end

