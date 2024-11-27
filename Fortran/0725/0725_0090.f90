program main
real,parameter::ans =55.0
if (sum((/(real(i),i=1,10)/))==ans) then
  print *,'ok'
else
  print *,'ng'
endif
end
