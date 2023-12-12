program main
complex(kind=16) c,e
complex(kind=16) c1
complex(kind=16) e1,res
real(kind=8),parameter:: error=0.000001_8
	
call sub(c)
call sub(e)
c1 = c**2.0 + c**3.0 + c**4.0 + c**5.0
e1 = e**2.0 + e**3.0 + e**4.0 + e**5.0
res=c1-e1

if (abs(real(res)-imag(res)) <= error) then
  print *,'ok'
else
  print *,'ng'
endif

contains

subroutine sub(c)
complex(kind=16) c
c = (4.0,2.0)
end subroutine
end program
