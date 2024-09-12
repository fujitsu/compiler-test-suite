call s1
call s2
call s3
print *,'pass'
end
subroutine s1
real(4)::pi=3.1415926535897932384626433832795
complex(4)::c(10000)
real(4)::y(10000)
call random_number(harvest=y)
c=y*10000
if(any(real(acos(c))<0.0)) print *,'err'
if(any(real(acos(c))>pi)) print *,'err1'
end
subroutine s2
real(8)::pi=3.14159265358979323846264338327950288419716939937510582097494450_8
complex(8)::c(10000)
real(8)::y(10000)
call random_number(harvest=y)
c=y*10000
if(any(real(acos(c))<0.0_8)) print *,'err'
if(any(real(acos(c))>pi)) print *,'err1'
end
subroutine s3
real(16)::pi=3.14159265358979323846264338327950288419716939937510582097494450_16
complex(16)::c(10000)
real(16)::y(10000)
call random_number(harvest=y)
c=y*10000
if(any(real(acos(c))<0.0_16)) print *,'err'
if(any(real(acos(c))>pi)) print *,'err1'
end
