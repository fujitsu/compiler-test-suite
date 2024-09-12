subroutine sub(k) bind(c)
integer,value:: k
k=k+1
write(1,*) k
end
interface
subroutine sub(k) bind(c)
integer,value:: k
end
end interface
call sub(1)
rewind 1
read(1,*) k
if (k/=2) print *,101
print *,'pass'
end
