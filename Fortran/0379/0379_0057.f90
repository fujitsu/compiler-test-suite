module mod01
  bind(c,name='zzzz')::/com/
  common /com/ i1
end
subroutine sub01
  use mod01
  bind(c,name='zzzz')::/com/
  common /com/ i2
  i2=2
end
use mod01
i1=1
call sub01
if (i1/=2)print *,i1
call sub02
print *,'ok'
end
subroutine sub02
  bind(c,name='zzzz')::/com/
  common /com/ i2
  if (i2/=2)print *,i2
end
