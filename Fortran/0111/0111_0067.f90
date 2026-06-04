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
type ty1
 integer :: rr = (r03,r03)
end type
type(ty1) :: str
type ty2
 integer :: kk / (r03,r03)/
end type
type(ty2) :: str2
if (str%rr.ne.4) print *,'fail'
if (str2%kk.ne.4) print *,'fail'
str2=ty2((r03,r03)+1) 
if (str2%kk.ne.5) print *,'fail'
end
