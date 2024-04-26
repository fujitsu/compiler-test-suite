program main
  integer :: ans1,res1
  REAL A(10,10)   /100*1./
  REAL B(10,10)   /100*1./
  REAL C(10,10)   /100*1./
  ans1=1000
  do  I=1,10
     do  J=1,10
        A(I,J)=0.
        do  K=1,10
           A(I,J)=A(I,J)+B(I,K)*C(K,J)
        end DO
     end do
  enddo


  res1=sum(a)
  if(res1 == ans1) then
     print *,"ok"
  else
     print *,"ng",res1
  end if
end program main

