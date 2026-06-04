call s1
call s2
call s3
call s4
call s5
call s6
print *,'pass'
contains
subroutine s1
  integer,allocatable::k
  allocate(k)
  i=1
  k=2
  !$omp atomic capture
  j=i
  i=k
  !$omp end atomic
  if(j/=1) print *,'err1'
  if(i/=2) print *,'err2'
end subroutine s1
subroutine s2
i=1
  !$omp atomic capture
  j=i
  i=-1
  !$omp end atomic
  if(j/=1) print *,'err3'
  if(i/=-1) print *,'err4'
end subroutine s2
subroutine s3
  integer::k(2)
  i=1
  k=2
  !$omp atomic capture
  j=i
  i=k(1)
  !$omp end atomic
  if(j/=1) print *,'err1'
  if(i/=2) print *,'err2'
end subroutine s3
subroutine s4
  type t
     integer::k
  end type t
  type(t)::tt
  i=1
  tt%k=2
  !$omp atomic capture
  j=i
  i=tt%k
  !$omp end atomic
  if(j/=1) print *,'err1'
  if(i/=2) print *,'err2'
end subroutine s4
subroutine s5
  integer,pointer::k
  allocate(k)
  i=1
  k=2
  !$omp atomic capture
  j=i
  i=k
  !$omp end atomic
  if(j/=1) print *,'err1'
  if(i/=2) print *,'err2'
end subroutine s5
subroutine s6
  i=1
  k=2
  !$omp atomic capture
  j=i
  i=k
  !$omp end atomic
  if(j/=1) print *,'err1'
  if(i/=2) print *,'err2'
end subroutine s6
end program
