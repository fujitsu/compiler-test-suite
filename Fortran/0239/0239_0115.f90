real :: a,b
a=0.5
b=0.1
associate( c => sin(b) )
write(1,*) a+c
end associate
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) x
if (abs(x-0.5-sin(0.1))>0.00001) print *,101
end

