  call s1
  call s2
  call s3
  call s4
  print *,"pass"
contains
subroutine s1
integer(1)::p
integer(4)::j
j=100
p=0
!$omp atomic capture
p=or(p,2)
j=p
!$omp end atomic
if(j/=2) print *,'err'
end subroutine
subroutine s2
integer(2)::p
integer(4)::j
j=100
p=0
!$omp atomic capture
p=or(p,2)
j=p
!$omp end atomic
if(j/=2) print *,'err'
end subroutine
subroutine s3
integer(4)::p
integer(4)::j
j=100
p=0
!$omp atomic capture
p=or(p,2)
j=p
!$omp end atomic
if(j/=2) print *,'err'
end subroutine
subroutine s4
integer(8)::p
integer(4)::j
j=100
p=0
!$omp atomic capture
p=or(p,2)
j=p
!$omp end atomic
if(j/=2) print *,'err'
end subroutine
end program
