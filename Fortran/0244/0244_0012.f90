character(len=3),pointer,contiguous :: aa(:,:)

allocate(aa(5,4))
aa = 'abc'

if(is_contiguous(aa) .neqv. .true.) print*,101
call sss(aa)

contains
subroutine sss(b)
character(len=3)::b(5,*)
if(all(b(:,1:3)=='abc')) print*,'pass'
end subroutine

end
