module mod
pointer(ptr,ia)
end

use mod,only:ia
use mod
use mod,only:iaa=>ia
print *,'pass'
end

