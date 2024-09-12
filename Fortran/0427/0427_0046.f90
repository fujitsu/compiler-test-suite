module mo1
integer :: ii
end
module m02
use mo1
private 
end
module m03
use mo1
private 
end

module moddd
use mo1
use m02
use m03
private
end

module mmmmmm
use moddd
private
interface
subroutine sss()
use moddd
use mo1
use m02
use m03
use mo1
use m02
use m03
use mo1
use m02
use m03
end subroutine
end interface
end
print *,'pass'
end
