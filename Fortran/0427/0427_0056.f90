module mo1
integer :: ii
end
module m02
use mo1
end
module m03
use mo1,only:jj=>ii
end
module moda
use m02
use m03
private ::ii,jj
end
module modb
use m02
use m03,only:kk=>jj
use m03,only:jj
private ::jj,kk
end

use moda
use modb
print *,'pass'
kk=1
jj=1
end
