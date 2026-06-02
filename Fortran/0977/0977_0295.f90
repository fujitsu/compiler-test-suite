j=1
call s(j)
if (j/=2)write(6,*) "NG"
print *,'pass'
contains
subroutine s(i)
volatile i
i=i+1
end subroutine
end
