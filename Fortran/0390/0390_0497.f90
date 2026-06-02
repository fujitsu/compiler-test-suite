integer ::x=1
nn=2
!$omp atomic
x=x+ fun([ (k,k=1,nn) ]) 

if (x/=4) print *,1001
print *,'pass'
contains
 function fun(z) result(n)
  integer::z(2)
  n= sum(z)
 end function
end

