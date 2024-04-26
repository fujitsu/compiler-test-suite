  real*8 A(10000) 
  real*8 B(10,10000) 
  real*8 t1,t2 
  logical l,ll(10000)
  A=1.0_8
  B=1.0_8
  call cpu_time(t1) 
  do i1=1,10 
     do i2=1,10 
        ll = (/A==B(i2,:)/) 
        l = all(ll) 
        if(l) B(i2,i1) = B(i2,i1) + 1.0_8 
     enddo
  enddo
  call cpu_time(t2) 
  if(t2-t1>0.1_8) print *,'slow',' ','CPU TIME=', t2-t1
  if(B(10,10000)/=1.0_8) print *,'err' 
  print *,'pass'
end program
