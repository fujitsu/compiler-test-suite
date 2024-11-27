program main
real,dimension(1:10)::a,b

a = (/(real(i)/1.1,i=1,10)/)
b = (/(real(i)/1.1,i=1,10)/)

if (sum(a)==sum(b)) then
  print *,'ok'
else
  print *,'ng',sum(a),sum(b)
endif
end
