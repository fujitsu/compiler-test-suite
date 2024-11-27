program main
real,parameter::ans =110.0
if (sum((/sum((/(real(i),i=1,10)/)),sum((/(real(i),i=1,10)/))/))==ans) then
  print *,'ok'
else
  print *,'ng'
endif
end
