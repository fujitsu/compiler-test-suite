character(*,4),parameter::c(3,1)*1=transpose(reshape([4_"1",4_"2",4_"3"],&
[1,3]))

write(112,*) c
write(112,*) transpose(reshape([4_"1",4_"2",4_"3"],[1,3]))  
rewind 112
print *,'pass'
end
subroutine s
integer  k
read(112,*) k
if (k/=123) print *,101
read(112,*) k
if (k/=123) print *,102
end



