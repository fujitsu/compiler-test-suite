write(1,'("(",g0.17",",g0.17")")') (12.1_8,12.16_8)
write(1,1) (12.1_8,12.16_8)
1 format("(",g0.17",",g0.17")")
write(1,2) (12.1_8,12.16_8)
2 format(g0.17,",",g0.17)
write(1,3) 12.1_8
3 format(g0.17)
write(1,4) 12.1_8
4 format(g0.10)
write(1,5) 12.1_8
5 format(g0.9)
write(1,6) 12.1_8
6 format(g0.1)
write(1,7) (12.1_8,12.16_8)
7 format("(",g0.17,",",g0.17,")")
call chk
print *,'pass'
end
subroutine chk
complex :: x
rewind 1
read (1,*) x
if (abs(x-(12.10,12.160))>0.001) print *,101
read (1,*) x
if (abs(x-(12.10,12.160))>0.001) print *,102
read (1,*) a,b
if (any(abs([a,b]-[12.10,12.160])>0.001)) print *,103
read (1,*) a
if (any(abs([a]-[12.10])>0.001)) print *,104
read (1,*) a
if (any(abs([a]-[12.10])>0.001)) print *,105
read (1,*) a
if (any(abs([a]-[12.10])>0.001)) print *,106
read (1,*) a
if (any(abs([a]-[10.0])>0.001)) print *,107
read (1,*) x
if (abs(x-(12.10,12.160))>0.001) print *,108
end
