program main
real,dimension(1:10)::a
a = (/(real(i),i=1,10)/)
r = sum(a(1:0))
if (r==0) then
  print *,'ok'
else
  print *,'ng',r
endif
end
