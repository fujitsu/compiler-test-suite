integer:: v(3)=(/3,2,1/)
integer::a(3)
write(12, '(z16.16)')loc(a)
write(12, '(z16.16)')loc(a(v))
write(12, '(z16.16)')loc(a(1))
write(12, '(z16.16)')loc(a(2))
write(12, '(z16.16)')loc(a(3))
call chk
print    *,'pass'
end
subroutine chk
implicit character(16)(c)
rewind 12
read(12,'(a)') c1
read(12,'(a)') c2
read(12,'(a)') c3
read(12,'(a)') c4
read(12,'(a)') c5

if (c1/=c3) print *,c1,c3,102
if (c1==c4) print *,c1,c4,103
if (c1==c5) print *,c1,c5,104
end
