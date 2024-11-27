program main
real,dimension(1:10,1:10)::a
real,parameter::ans=5050
a = reshape((/(real(i),i=1,100)/),(/10,10/))
if (sum(a)==ans) then
  print *,'ok'
else
  print *,'ng',sum(a)
endif
end
