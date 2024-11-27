module m1
contains
subroutine s(j,k)
integer,value,optional::j
if (present(j))then
 if (k/=1)write(6,*) "NG"
 if (j/=10)write(6,*) "NG"
 j=20
else
 if (k/=2)write(6,*) "NG"
endif
end subroutine
end
use m1
j=10
call s(j,1)
if (j/=10)write(6,*) "NG"
call s(k=2)
print *,'pass'
end
 
