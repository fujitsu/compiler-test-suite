character(*,4),parameter::c(3,1)*1=transpose(reshape([4_"1",4_"2",4_"3"],&
[1,3]))

write(1,*) c
write(1,*) transpose(reshape([4_"1",4_"2",4_"3"],[1,3]))  
rewind 1
call s
print *,'pass'
end
subroutine s
integer  k
read(1,*) k
if (k/=123) print *,101
read(1,*) k
if (k/=123) print *,102
end
