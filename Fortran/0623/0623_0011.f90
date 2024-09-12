module mod01
 intrinsic :: iabs
end module
module mod02
 use mod01, xxxx => iabs
 procedure (xxxx), pointer :: p02
end module
module mod03
 use mod02
end module
use mod03, yyyy => xxxx

print *,'pass'

end
