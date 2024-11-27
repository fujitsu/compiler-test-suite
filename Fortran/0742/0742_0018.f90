integer b1,a1(10,10),km

call set(km)

b1=0
ki=0

do 10 i=1,km
  do 10 j=1,km
10 a1(j,i)=3

do 20 i=1,km
  do 20 j=1,km
    ki = a1(j,i)*2
20  if ( ki.eq.6 ) b1=ki

if ( b1.ne.6 ) then
  print *,'ng'
else
endif
  print *,'pass'
end

subroutine set(k)
k=10
end
