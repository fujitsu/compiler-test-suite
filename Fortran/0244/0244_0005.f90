integer,pointer,contiguous :: aa(:,:)

allocate(aa(5,4))
aa = 4

if(is_contiguous(aa) .neqv. .true.) print*,101
call sss(aa)

contains
subroutine sss(b)
integer::b(5,*)
if(all(b(:,1:3)==4)) print*,'pass'
end subroutine

end
