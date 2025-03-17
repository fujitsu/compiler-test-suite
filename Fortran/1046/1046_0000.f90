real(2),save::a,ar(10)
complex(2),save::b,br(10)
!$omp threadprivate(a,ar,b,br)
a=1.0
ar=2.0
b=(3.0,4.0)
br=(4.0,5.0)

!$omp parallel copyin(a,ar,b,br)
if (a /= 1.0) then
  print *, 'ng1: a'
endif
if (any(ar /= 2.0)) then
  print *, 'ng1: ar'
endif
if (b /= (3.0,4.0)) then
  print *, 'ng1: b'
endif
if (any(br /= (4.0,5.0))) then
  print *, 'ng1: br'
endif
a=2.0
ar=3.0
b=(4.0,5.0)
br=(6.0,7.0)
!$omp end parallel

if (a /= 2.0) then
  print *, 'ng2: a'
endif
if (any(ar /= 3.0)) then
  print *, 'ng2: ar'
endif
if (b /= (4.0,5.0)) then
  print *, 'ng2: b'
endif
if (any(br /= (6.0,7.0))) then
  print *, 'ng2: br'
endif

print *,'pass'
end
