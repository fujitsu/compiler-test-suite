program main
INTEGER,EXTERNAL:: HALF   
integer::r1
procedure(integer),pointer::ptr=>HALF
      I=20
ptr=>HALF
r1=HALF(I)
r1=ptr(I)
if(r1.ne.10)print*,"101"
print*,"PASS"
end

INTEGER FUNCTION HALF(I) 
      INTEGER::I
      HALF =I/2
      RETURN
      END

