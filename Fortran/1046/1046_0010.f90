real(2),allocatable::a,ar(:)
complex(2),allocatable::b,br(:)
integer::t,omp_get_num_threads
allocate(a,ar(10),b,br(10))
a=0.0
ar=0.0
b=(0.0,0.0)
br=(0.0,0.0)
!$omp parallel reduction(+:a,ar,b,br) shared(t)
a=a+1.0
ar=ar+1.0
b=b+(1.0,0.0)
br=br+(1.0,0.0)
!$omp master
t=omp_get_num_threads()
!$omp end master
!$omp end parallel
if (a /= t) then
  print *,'ng: a'
endif
if (any(ar /= t)) then
  print *,'ng: ar'
endif
if (b /= t) then
  print *,'ng: b'
endif
if (any(br /= t)) then
  print *,'ng: br'
endif
print *,'pass'
end
