user_fun(i,j,k) = (i+j)/2**k
n=0
!$omp atomic 
n = user_fun(2,4,1)+n
if(n/=3) print *,'err1'
!$omp atomic write
n = user_fun(2,4,1)
if(n/=3) print *,'err2'
!$omp atomic capture
n = user_fun(2,4,1) *n
m=n
!$omp end atomic
if(n/=9) print *,'err3'
!$omp atomic capture
m=n
n = user_fun(2,4,1)*n
!$omp end atomic
if(n/=27) print *,'err4'
if(m/=9) print *,'err5'
print *,'pass'
end
