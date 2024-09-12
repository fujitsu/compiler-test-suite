integer,parameter::k=2
complex(k) :: a(2),b(2)
complex(k) :: c   ,d
a=(1,1)
b=(1,1)
c=(1,1)
d=(1,1)
if (a(1)/=b(1)) print *,101
if (c   /=d   ) print *,102
write(1,*)a(1)/=b(1)
write(1,*)c   /=d   
call chk
print *,'pass'
end
subroutine chk
logical x
rewind 1
read(1,*) x
if (x) print *,201
read(1,*) x
if (x) print *,202
end
