!

program main
real r1,r2
logical(kind=4) lll

r1 = rdata1()
r2 = rdata1()

lll = r1 < r2

if (lll) then
  print *,'ng'
else
  print *,'ok'
endif
end

real function rdata1()
real r
r = 1.1*1.9
rdata1=r
end

real function rdata2()
real r
r = 1.3*1.5
rdata2=r
end

