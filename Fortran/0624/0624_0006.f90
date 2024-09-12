PROGRAM MAIN
complex*16,PARAMETER::b= 4_4 ** ((3.0_8, 3.0_8))

integer*4::c
complex*16::d,e

c = 4_4
d = ((3.0_8 , 3.0_8))

e= c ** d
if (abs(b-e)>0.00000000001_8) then
 print *,b ,"--",e
endif
 print*, "pass"

END
