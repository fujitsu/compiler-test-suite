character(len=5),allocatable :: trg(:,:,:)
integer,allocatable::tt(:,:,:)

allocate(trg(10,1:3,8))
allocate(tt(10,1:3,8))
trg = 'cvbnm'
tt = 3

call sub(trg(:,:,2:6))

contains
subroutine sub(dptr)
character(len=5)::dptr(:,:,:)
if(is_contiguous(dptr(:,1+1:tt(1,2,3)-2+8-6,1:5:2)) .eqv. .false.) then
 if(is_contiguous(dptr(:,1+1-1:tt(1,2,3)*3-6,1:5+1-1))) then
  print*,'pass'
 else
  print*,102
 endif
else
 print*,101
endif
end subroutine
end
