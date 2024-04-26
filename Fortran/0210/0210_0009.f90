call test1()
call test2()
print *,'pass'
end
subroutine test1()
parameter(k=2)
complex(k), dimension (2,3) :: a, b
real(k), dimension (2,3) :: aa= reshape((/1,2,3,4,5,6/), (/2,3/)) 
complex(k),parameter::z2=(2,2),z0=0,z4=(4,4),z6=(6,6)
a = cmplx(aa,aa)

b = eoshift(a,1) 
if (b(1,1).ne.z2   )print *,'err'
if (b(2,1).ne.z0   )print *,'err'
if (b(1,2).ne.z4   )print *,'err'
if (b(2,2).ne.z0   )print *,'err'
if (b(1,3).ne.z6   )print *,'err'
if (b(2,3).ne.z0   )print *,'err'
end
subroutine test2()
parameter(k=8)
complex(k), dimension (2,3) :: a, b
real(k), dimension (2,3) :: aa= reshape((/1,2,3,4,5,6/), (/2,3/)) 
complex(k),parameter::z2=(2,2),z0=0,z4=(4,4),z6=(6,6)
a = cmplx(aa,aa)

b = eoshift(a,1) 
if (b(1,1).ne.z2   )print *,'err'
if (b(2,1).ne.z0   )print *,'err'
if (b(1,2).ne.z4   )print *,'err'
if (b(2,2).ne.z0   )print *,'err'
if (b(1,3).ne.z6   )print *,'err'
if (b(2,3).ne.z0   )print *,'err'
end
