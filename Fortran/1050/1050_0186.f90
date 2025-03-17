!
!
!
!

program main
  integer::a=5,ck=0,i
  !$omp parallel
    !$omp do
    do i=1,10
     !$omp task
         !$omp critical
           a=a+1
           ck=ck+1
         !$omp end critical
     !$omp end task
    end do
  !$omp end parallel

  if (a.ne.15 .or. ck.ne.10) then
    print *,"NG-2:a=",a
    print *,"NG-2:ck=",ck
  end if
  print *,"pass"
end program main
