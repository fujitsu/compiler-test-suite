module n
integer::y=1
end
module m01
use n
type x
   integer::x1=1
   contains
generic,private::gen=>z
    procedure        ::z
end  type
private
public::x
contains
character function   z(d,k)
class(x)::d
if (d%x1/=k) print *,1001
if (d%x1/=y) print *,1001
z='1'
end 
end
use m01
type(x)::v
if (v%z(1)/='1') print *,1001

print *,'sngg455n : pass'
end
