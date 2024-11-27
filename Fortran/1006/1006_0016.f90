call sub1()
print *,"pass"
end

subroutine sub1()
complex(kind=4 ),parameter :: pc3=4.0_16
real(kind=4 )   ,parameter :: r03=4.0_16
complex(kind=4),parameter  :: cca=(r03,r03)
data i01 /(r03,r03)/
data i02 /1*(r03,r03)/
data i03,i04 /(r03,r03),(r03,r03)/
write(20,*) (r03,r03)
write(20,*) ((r03,r03),i=1,10)
write(20,*) ((1.0,r03),i=1,10)
write(20,*) ifun((r03,r03))
write(20,*) ifun(((-r03),r03))
write(20,*) ifun(-(r03,r03))
write(20,*) ifun(+(r03,r03))
contains
function ifun(c)
complex(kind=4) :: c
ifun=int(c)
end function
end
