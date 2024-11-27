program main
real,dimension(1:10)::a
real,parameter::ans=8.0
a = (/(real(i),i=1,10)/)
r = sum(a(8:8:1))
if (r==ans) then
  print *,'ok'
else
  print *,'ng'
endif
end
