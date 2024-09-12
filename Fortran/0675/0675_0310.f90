REAL*8 a(100)
DO i=1,100
a(i)=i**i+3_8
ENDDO
call sub(a)
end
recursive subroutine sub(a)
real*8 a(100),b(100),c(100)
DO i=1,100
b(i)=SIN(a(i))
C(i)=SIN(a(i)+2_8)
ENDDO
WRITE(6,*)"b=",b
WRITE(6,*)"c=",c
if( a(1) .eq. 1.0) return
a=1.0_8
call sub(a)
END
