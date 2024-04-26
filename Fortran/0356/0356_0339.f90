REAL (KIND=2) :: R(3)/10,2,30/
FORALL (I=1:3,R(I)>3.0_2)
 R(I)=R(I)+1.0_2
END FORALL

rr = R(1)
if (rr .ne.11) then
   write(6,*) "ng"
   write(6,*) rr
else
   write(6,*) "OK"
endif

END
