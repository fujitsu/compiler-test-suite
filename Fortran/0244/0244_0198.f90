integer,pointer :: ptr(:)
integer,target :: trg(10)

trg = 3
ptr=>trg

if(is_contiguous(ptr)) print*,'pass'
end
