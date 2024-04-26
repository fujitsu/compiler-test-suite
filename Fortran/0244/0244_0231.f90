character(len=:),pointer::arr(:,:)
character(len=3),target::tgt(7,8)='abc'

arr=>tgt

if(is_contiguous(tgt) .and. is_contiguous(arr)) print*,'pass'
end
