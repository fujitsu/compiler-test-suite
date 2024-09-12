BLOCK DATA
COMMON /aa/yy
!$OMP THREADPRIVATE (/aa/)
DATA yy /1.0/
end
program common1
COMMON /aa/yy
!$OMP THREADPRIVATE (/aa/)
if (yy/=1.0) print *,'error'
print *,'pass'
end
