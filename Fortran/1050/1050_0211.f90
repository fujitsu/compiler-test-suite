!
!
!

type mytype
   integer(8)::a
   integer(8)::b
end type mytype
type(mytype)::t,s
t%a=100
t%b=10
s%a=100
s%b=10
!$omp task firstprivate(s,t)
if ( t%a /= 100 .or. t%b /= 10 .or. s%a /= 100 .or. s%b /= 10 ) then
   print *,"NG1 t%a=",t%a," / t%b=",t%b
   print *,"NG1 s%a=",s%a," / s%b=",s%b
end if
t%a=10
s%a=10
!$omp end task
if ( t%a /= 100 .or. t%b /= 10 .or. s%a /= 100 .or. s%b /= 10 ) then
   print *,"NG2 t%a=",t%a," / t%b=",t%b
   print *,"NG2 s%a=",s%a," / s%b=",s%b
end if
print *,"pass"
end
