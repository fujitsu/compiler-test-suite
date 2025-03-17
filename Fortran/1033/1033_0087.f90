program main
  call s1
  print *,'pass'
end

module m1
 complex(4),parameter:: q1=1,q2=2,q3=3,q4=4,q5=5
 complex(4):: cc(2,2)
end

subroutine s1
 use m1
  cc = cmplx(real(reshape((/q1,q2,q3,q4,q5/),(/2,2/))), &
             real(reshape((/q1,q2,q3,q4,q5/),(/2,2/))))
  if (any(cc/=reshape( (/(1.0,1.0),(2.0,2.0),(3.0,3.0),(4.0,4.0)/),(/2,2/)) )) &
      print *,'error ',cc
end
