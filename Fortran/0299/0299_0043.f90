 program main
  integer c(10,1)/10*-99/
  integer z(10,1)
  data z/1,2,3,4,5,6,7,8,9,10/

  forall (k1=1:10,k2=1:1)
     c(k1,k2)= z(k1+1-1,k2)
  end forall

  print*,"c=",c
end program main
