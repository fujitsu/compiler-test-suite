program main
real,dimension(1:100)::a,b,c,d,e
real,parameter::ans=266.000275
real,parameter::gos=  0.0003
real res
a = 1.0
b = 1.1
c = 1.2
d = 1.3
e = 0.0
call sub()
res = sum(e)
if (abs(res-ans)<=gos) then
  print *,'ok'
else
  print *,'ng',res
endif
contains
subroutine sub()
do i=1,100
  e(i) = e(i) + (a(i)*b(i) + c(i)*d(i))
enddo
end subroutine
end



