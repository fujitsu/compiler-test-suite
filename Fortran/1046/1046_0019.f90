real(2),save,allocatable::a,ar(:)
complex(2),save,allocatable::b,br(:)
!$omp threadprivate(a,ar,b,br)

!$omp parallel
allocate(a,ar(10),b,br(10))
!$omp single
a=1.0
ar=2.0
b=(3.0,4.0)
br=(4.0,5.0)
!$omp end single copyprivate(a,ar,b,br)
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
!$omp end parallel

if (a /= 1.0) then
  print *, 'ng2: a'
endif
if (any(ar /= 2.0)) then
  print *, 'ng2: ar'
endif
if (b /= (3.0,4.0)) then
  print *, 'ng2: b'
endif
if (any(br /= (4.0,5.0))) then
  print *, 'ng2: br'
endif

print *,'pass'
end
