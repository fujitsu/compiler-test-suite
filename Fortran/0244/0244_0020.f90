integer,target :: aa(5,5) =4
integer,pointer,contiguous :: aaptr(:,:,:)

allocate(aaptr(5,4,5))
aaptr = 4
aaptr(:,:,1:2) = 0
call ss(aa)

contains
subroutine ss(a)
integer,contiguous::a(:,:)
integer::cc(3,5)=2
cc(:,::2)=3

call sss(a,cc(:,::2),aaptr)

if(is_contiguous(a)) print *,'pass'
if(is_contiguous(aaptr(:,:,3:)) .neqv. .true.) print*,100
end subroutine

subroutine sss(b,b1,b2)
integer::b(5,2),b1(3,3)
integer::b2(5,4,*)
if(all(b2(:,:,1:3)/=4)) print*,101
if(all(b/=4))print*,102
if(all(b1/=3))print*,103
end subroutine

end
