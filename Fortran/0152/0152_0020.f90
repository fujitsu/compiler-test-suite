!$omp atomic write
i=+fun()
if(i/=1) print *,'err',i
!$omp atomic write
i=-fun()
if(i/=-1) print *,'err',i
print *,"pass"
contains
function fun() result(j)
j=1
end function
end
