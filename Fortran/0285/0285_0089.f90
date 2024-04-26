REAL :: writearr(100,100,10)=2.5
integer::Tid(10)=0

 OPEN (unit=10,file='ABC125.DATA201',form='unformatted',asynchronous='yes')
 DO i=1,10
 associate(aa=>Tid(i))
   WRITE(unit=10,asynchronous='yes',id=aa) writearr(:,:,i)
 end associate
 END DO
close (10,status='delete')

print*,'pass',Tid
end
