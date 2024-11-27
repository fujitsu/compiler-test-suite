program main
real,dimension(1:10)::a
real,parameter::ans=36.0
a = (/(real(i),i=1,10)/)
r = sum(a(1:8:1))
if (r==ans) then
  print *,'ok'
else
  print *,'ng',r
endif
end
