program main
real,dimension(1:100)::a,b,c,d
real,parameter::ans =6.65999985
real,parameter::error=0.0000002
real res
a = 1.0
b = 1.1
c = 1.2
d = 1.3
call sub(4.0)
if (abs(res-ans)<=error) then
  print *,'ok'
else
  print *,'ng',res,ans
endif
contains
subroutine sub(bbb)
real bbb
res = 0.0
do i=1,100
  res = bbb + (a(i)*b(i) + c(i)*d(i))
enddo
end subroutine
end



