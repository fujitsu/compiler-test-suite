REAL :: arr(100,100,10),writearr(100,100,10)=2.5
integer::Tid(10)=0,iost=9

 OPEN (unit=10,file='ABC005.DATA141',form='unformatted',asynchronous='yes')
 DO i=1,10
   WRITE(unit=10,asynchronous='yes') writearr(:,:,i)
 END DO
 CLOSE(10)

 OPEN (unit=10,file='ABC005.DATA141',form='unformatted',asynchronous='yes')

 DO i=1,10
  associate(aa=>Tid(i)) 
   READ (unit=10,asynchronous='yes',id=aa) arr(:,:,i)
  end associate
 END DO

 DO i=1,10
  associate(aa=>Tid(i)) 
   WAIT (unit=10,id=aa,iostat=iost)
   CALL proc(arr(:,:,i))
  end associate
 END DO
close (10,status='delete')

contains
subroutine proc(darr)
real darr(100,100)
if(darr(1,1)==2.5 .and. iost==0)print*,'inside proc PASS 10/',Tid
end subroutine
end
