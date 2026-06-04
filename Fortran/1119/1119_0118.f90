  call s1
  call s2
  call s3
  print *,"pass"
contains
subroutine s1
real(4)::p
real(4)::j
j=100
p=0
!$omp atomic capture
p=min(p,2.0)
j=p
!$omp end atomic
if(j/=0.0) print *,'err'
end subroutine
subroutine s2
real(8)::p
real(4)::j
j=100
p=0
!$omp atomic capture
p=min(p,2.0)
j=p
!$omp end atomic
if(j/=0.0) print *,'err'
end subroutine
subroutine s3
real(16)::p
real(4)::j
j=100
p=0
!$omp atomic capture
p=min(p,2.0)
j=p
!$omp end atomic
if(j/=0.0) print *,'err'
end subroutine
end program
