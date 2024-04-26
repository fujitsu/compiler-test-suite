call test()
print *,'pass'
end
module mod_sample
integer :: aa,c,d,b
data aa/100/
data b/200/
data c/300/
data d/400/
end
subroutine test()
use mod_sample
if (aa.ne.100)print *,'err'
if (b.ne.200)print *,'err'
if (c.ne.300)print *,'err'
if (d.ne.400)print *,'err'
call t01()
call t02()
end
subroutine t01()
use mod_sample, a => b
if (a.ne.200)print *,'err'
end
subroutine t02()
use mod_sample, only : c, d
integer aa
aa=1
aa=aa
if (c.ne.300)print *,'err'
if (d.ne.400)print *,'err'
end
