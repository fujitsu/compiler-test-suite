write(1,'("(",g0.17",",g0.17")")') (12.1_8,12.16_8)
write(1,1) 12.1_8
1 format(g0.17",2")
write(1,2) 12.1_8
2 format(g0.17,",2")
call chk
print *,'pass'
end
subroutine chk
complex x
rewind 1
read(1,*) x
if (abs(x-(12.1,12.16))> 0.001) print *,101
read(1,*) a,k
if (abs(a-(12.1))> 0.001) print *,102
if (k/=2 ) print *,103
read(1,*) a,k
if (abs(a-(12.1))> 0.001) print *,122
if (k/=2 ) print *,123
end
