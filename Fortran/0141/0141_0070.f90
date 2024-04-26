subroutine s1
assign 20 to k
if (.true.) then
assign 20 to k
if (.true.)goto k
20 continue
endif
do n=1,2
assign 30 to k
if (.true.) then
assign 30 to k
if (.true.)goto k
30 continue
endif
end do
end
call s1
print *,'pass'
end

