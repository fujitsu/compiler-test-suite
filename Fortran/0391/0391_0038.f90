subroutine s1
integer::arr(7)
arr = 33

if(is_contiguous(arr(2:5))) then

else
 print *,201
endif
end

subroutine s2
integer, contiguous, pointer :: ii(:)
integer,target :: tgt(14)=23

ii=>tgt

if(is_contiguous(ii)) then
else
print *,100001
endif
if(is_contiguous(ii(::2))) print*,101
if(is_contiguous(ii([2,3,4]))) print*,102
end

subroutine s3
integer, contiguous, pointer :: ii(:)
integer :: i=1,j=2
integer,target :: tgt(14)=23

ii=>tgt

if(is_contiguous(ii(::i)) .neqv. .true.) print*,103
if(is_contiguous(ii(::j))) print*,104
end

subroutine s4
integer,pointer :: ptr(:,:)
integer,target :: trg(4,4)
integer :: i
i=1
ptr=>trg(:,::i)
if (is_contiguous(ptr(:,:))) then
else
 print *,1001
endif     
end

call s1
call s2
call s3
call s4
print *,'pass'
end

