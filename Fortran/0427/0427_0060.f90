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
private ::ii
end
module modb
use m02
use m03,only:kk=>jj
use m02,only:jj=>ii
private ::jj
end

use moda
use modb
print *,'pass'
kk=1
jj=1
end
