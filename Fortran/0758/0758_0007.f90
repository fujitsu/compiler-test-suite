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
k=1
i=1
jj=1
ii=1
end
