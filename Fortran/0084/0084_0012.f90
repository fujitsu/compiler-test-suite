module mod0
integer ::i,j,k
!$omp threadprivate(i,j,k)
end

module mod1
use mod0
end

module mod2
use mod0 ,only:ii=> i,j
end
module mod3
use mod0 ,only:i,jj=>j
end
module mod4
use mod3 ,only:ii=>i,j=>jj
end

use mod1
use mod2
use mod3
use mod4
j=1
k=2
i=3
if (j/=1) print *,101
if (k/=2) print *,102
if (i/=3) print *,103
if (jj/=1) print *,111
if (k/=2) print *,112
if (ii/=3) print *,113
jj=11
ii=13
if (jj/=11) print *,1111
if (k/=2) print *,1121
if (ii/=13) print *,1131
if (j/=11) print *,2111
if (k/=2) print *,2121
if (i/=13) print *,2131
print *,'pass'
end
