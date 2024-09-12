real ::a,b
a=1.0
b=0.1
associate( c => sin(b))
 write(1,*) a+c
end associate
call chk
print *,'pass'
end
subroutine chk
rewind 1
read (1,*) x
if (abs(x-1.09983337)>0.000001) print *,201
end


