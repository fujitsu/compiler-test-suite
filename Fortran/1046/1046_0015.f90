real(2)::a,ar(10)
complex(2)::b,br(10)
a=1.0
ar=2.0
b=(3.0,4.0)
br=(4.0,5.0)

!$omp parallel do lastprivate(a,ar,b,br)
do i=1,10
  a=i
  ar=i
  b=i
  br=i
end do
!$omp end parallel do

if (a /= 10.0) then
  print *, 'ng2: a'
endif
if (any(ar /= 10.0)) then
  print *, 'ng2: ar'
endif
if (b /= (10.0,0.0)) then
  print *, 'ng2: b'
endif
if (any(br /= (10.0,0.0))) then
  print *, 'ng2: br'
endif

print *,'pass'
end
