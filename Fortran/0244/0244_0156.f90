integer,allocatable :: trg(:,:,:),tt(:,:,:)

allocate(trg(10,-2:4,8))
allocate(tt(10,-3:3,8))
trg = 3
tt = 3

call sub(trg(:,:,2:6))

contains
subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr(:,3*3-2-10+4:tt(1,2,3)-2,1:5:2)) .eqv. .false.) then
 if(is_contiguous(dptr(:,3-3-2-1+4:tt(1,2,3)-2+tt(1,2,3)+3,1:5+1-1))) then
  print*,'pass'
 else
  print*,102
 endif
else
 print*,101
endif
end subroutine
end
