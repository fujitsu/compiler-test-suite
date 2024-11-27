program main
integer,parameter::N=100
integer::a=1
integer::b=2
!$omp parallel reduction(max:a,b)
do i=0,N
a=a+b
end do
!$omp end parallel
  if(a==1) then
    print *,'pass'
  else
    print *,'ng',a
  endif
end
