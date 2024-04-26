call s
end
subroutine s
integer,dimension(100) :: i
k = storage_size(i)
if (kind(k).eq.4) then
if(k.ne.32) print *,'err'
endif
end
