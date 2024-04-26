module mod
contains
pure function if()
if=1
end function
pure function if2()
if2=1
end function
subroutine sub(a)
character(if()) :: a ,b,c
ifunc()=if2()
if (a.ne.'a') print *,'err1'
b=a
if (b.ne.'a') print *,'err2'
c='a'
if (c.ne.'a') print *,'err3'
if (ifunc().ne.1) print *,'err'
if (ifunc().ne.1) print *,'err'
if (ifunc().ne.1) print *,'err'
if (ifunc().ne.1) print *,'err'
end subroutine
end

use mod
call sub('aa')
print *,'pass'
end

