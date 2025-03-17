!
!
!

complex(4)::a,b
a=cmplx(1.0)
b=cmplx(1.0)
!$omp task firstprivate(a,b)
if (a /= 1.0 .or. b /= 1.0) then
   print *,"NG-1 a=",a," / b=",b
endif
a=cmplx(2.5)
b=cmplx(3.0)
!$omp end task
if (a /= 1.0 .or. b /= 1.0) then
   print *,"NG-2 a=",a," / b=",b
endif
print *,"pass"
end
