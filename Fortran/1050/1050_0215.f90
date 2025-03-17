!
!
!

integer::a(10)
a=5
a(10)=10
!$omp task firstprivate(a)
if (a(10)/=10) then
   print *,"NG a(10)=",a(10)
endif
a(1) = 10
!$omp end task
print *,"pass"
end
