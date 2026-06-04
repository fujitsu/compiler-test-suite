 complex(kind=2) :: xx =(1.5_2,2.5_2)
 real*2::res2
 res2 = abs(xx)
 if(abs(res2 -2.91_2)>0.01)print*,"101",real(res2,4)
 res2 = res2+abs(xx)
 if(abs(res2 - 5.83_2)>0.01)print*,"102",real(res2,4)
 res2 = abs((15.5_2,20.5_2))
 if(abs(res2- 25.7_2)>0.05)print*,"103",real(res2,4)
 if (kind(abs(xx)) /= 2)print*,"104"
 print*,"PASS"
end program
