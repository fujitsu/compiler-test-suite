parameter(k=1)
integer::b(2)=1
integer::c=1
integer,parameter::d(2)=1
write(1,*) (k)
write(1,*) (b)
write(1,*) (c)
write(1,*) (d)
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) k;if(k/=1) print *,101
read(1,*) k1,k2
if(k1/=1) print *,102
if(k2/=1) print *,103
read(1,*) k;if(k/=1) print *,104
read(1,*) k1,k2
if(k1/=1) print *,105
if(k2/=1) print *,106
end
