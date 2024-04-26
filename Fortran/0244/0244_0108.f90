integer,target :: arr(5,5)
call sub()

contains
subroutine sub()
logical :: ll = (is_contiguous(arr(:,:)) .and. is_contiguous(arr))

if(ll .eqv. .true.) then
 print*,'pass'
else
 print*,101
endif
end subroutine
end
