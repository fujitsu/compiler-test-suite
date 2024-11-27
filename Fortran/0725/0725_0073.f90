program main
real,dimension(1:20)::a
real,parameter::ans=0.25
real,parameter::diff=1.0e-07
real r
a = (/(real(i)/100,i=1,20)/)
i = int(a(1)*100)*2
call sub(a,r,i)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end

subroutine sub(a,r,i)
real,dimension(1:20)::a
real r
r = sum(a(1:10:i))
end subroutine
