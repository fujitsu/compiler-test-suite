 real*2 :: xx 
 integer::kk
 xx=1.5_2
 if(abs(xx) /= 1.5)print*,"110"
 kk=kind(abs(xx))
 if(kk /= 2)print*,"101"
 kk=kind(abs(2.5_2))
 if(kk /= 2)print*,"102"
 print*,"PASS"
end program
