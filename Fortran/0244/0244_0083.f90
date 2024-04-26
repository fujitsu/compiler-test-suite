character(len=3), contiguous, pointer :: ii(:)

allocate(ii(22))

if(is_contiguous(ii)) print*,'pass'
end
