integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r4
real(8)::r8
real(16)::r16
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
!$omp threadprivate(i1,i2,i4,i8)
!$omp threadprivate(r4,r8,r16)
!$omp threadprivate(l1,l2,l4,l8)
i1=1
i2=2
i4=3
i8=4
!$omp parallel copyin(i1,i2,i4,i8)
  if (i1 /= 1) then
    print *,'ng 101',i1
  endif
  if (i2 /= 2) then
    print *,'ng 102',i2
  endif
  if (i4 /= 3) then
    print *,'ng 103',i4
  endif
  if (i8 /= 4) then
    print *,'ng 104',i4
  endif
!$omp end parallel
r4=1.0
r8=2.0
r16=3.0
!$omp parallel copyin(r4,r8,r16)
  if (r4 /= 1.0) then
    print *,'ng 111',r4
  endif
  if (r8 /= 2.0) then
    print *,'ng 112',r8
  endif
  if (r16 /= 3.0) then
    print *,'ng 113',r16
  endif
!$omp end parallel
l1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp parallel copyin(l1,l2,l4,l8)
  if (l1 .neqv. .true.) then
    print *,'ng 121',l1
  endif
  if (l2 .neqv. .true.) then
    print *,'ng 122',l2
  endif
  if (l4 .neqv. .true.) then
    print *,'ng 123',l4
  endif
  if (l8 .neqv. .true.) then
    print *,'ng 124',l8
  endif
!$omp end parallel
print *,'pass'    
end
