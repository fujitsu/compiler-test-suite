module m1
contains
subroutine sub01(length)
target::length

assign 10 to length 
  write(1,length)'2'

10 format(a)

assign 20 to length 
goto length
print *,101
20 continue
end subroutine
end
use m1
call sub01(k)
rewind 1
read(1,*) n
if (n/=2) print *,301
print *,'pass'
end
