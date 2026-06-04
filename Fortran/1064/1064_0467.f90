subroutine s1
integer,allocatable:: a4(:)
allocate( a4(2) , source= [1,2])

!$omp parallel reduction(+:a4) 
  a4=a4+1
  if (any(a4/=1    )) print *,104,a4
!$omp end parallel

  if (any(a4< [3,4])) print *,1104,a4
end
call s1
print *,'pass'
end
