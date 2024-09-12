module mod01
  common /com/ i1
  bind(c,name='zzzz')::/com/
end
subroutine sub01
use mod01
common /com/ i2
bind(c,name='zzzz')::/com/
i2=2
end
use mod01
i1=1
call sub01
if (i1/=2)print *,i1
call s2
print *,'ok'
end
subroutine s2
common /com/ i2
bind(c,name='zzzz')::/com/
if (i2/=2)print *,i2
end
