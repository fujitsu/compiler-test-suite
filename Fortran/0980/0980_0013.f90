module mod
 integer ,pointer :: ip,ia(:)
 integer ,target  :: tp,ta(10)
 protected :: ip,ia,tp,ta
 integer ,pointer :: jip,jia(:)
 integer ,target  :: jtp,jta(10)
 type ty1
   integer ,pointer :: ip,ia(:)
 integer   :: tp,ta(10)
 end type
 type(ty1) ,target:: str
 type(ty1) ,protected,target :: ppp
contains
 subroutine subbb()
 str=ty1(ip,ia,tp,ta)
 str=ty1(ia(1),ia,tp,ta)
 str=ty1(tp,ia,tp,ta)
 str=ty1(ta(1),ia,tp,ta)
 str=ty1(ppp%ip,ia,tp,ta)
 str=ty1(ppp%ia(1),ia,tp,ta)
 str=ty1(ppp%tp,ia,tp,ta)
 str=ty1(ppp%ta(1),ia,tp,ta)
 str=ty1(str%ip,ia,tp,ta)
 str=ty1(str%ia(1),ia,tp,ta)
 str=ty1(str%tp,ia,tp,ta)
 str=ty1(str%ta(1),ia,tp,ta)
contains
 subroutine ssssss()
 str=ty1(ip,ia,tp,ta)
 str=ty1(ia(1),ia,tp,ta)
 str=ty1(tp,ia,tp,ta)
 str=ty1(ta(1),ia,tp,ta)
 str=ty1(ppp%ip,ia,tp,ta)
 str=ty1(ppp%ia(1),ia,tp,ta)
 str=ty1(ppp%tp,ia,tp,ta)
 str=ty1(ppp%ta(1),ia,tp,ta)
 str=ty1(str%ip,ia,tp,ta)
 str=ty1(str%ia(1),ia,tp,ta)
 str=ty1(str%tp,ia,tp,ta)
 str=ty1(str%ta(1),ia,tp,ta)

 end subroutine
 end subroutine
end

use mod
 str=ty1(ip,ia,tp,ta)
 str=ty1(ia(1),ia,tp,ta)
 str=ty1(tp,ia,tp,ta)
 str=ty1(ta(1),ia,tp,ta)
 str=ty1(ppp%ip,ia,tp,ta)
 str=ty1(ppp%ia(1),ia,tp,ta)
 str=ty1(ppp%tp,ia,tp,ta)
 str=ty1(ppp%ta(1),ia,tp,ta)
 str=ty1(str%ip,ia,tp,ta)
 str=ty1(str%ia(1),ia,tp,ta)
 str=ty1(str%tp,ia,tp,ta)
 str=ty1(str%ta(1),ia,tp,ta)
end

module moda
use mod
contains
subroutine sss()
 str=ty1(ip,ia,tp,ta)
 str=ty1(ia(1),ia,tp,ta)
 str=ty1(tp,ia,tp,ta)
 str=ty1(ta(1),ia,tp,ta)
 str=ty1(ppp%ip,ia,tp,ta)
 str=ty1(ppp%ia(1),ia,tp,ta)
 str=ty1(ppp%tp,ia,tp,ta)
 str=ty1(ppp%ta(1),ia,tp,ta)
 str=ty1(str%ip,ia,tp,ta)
 str=ty1(str%ia(1),ia,tp,ta)
 str=ty1(str%tp,ia,tp,ta)
 str=ty1(str%ta(1),ia,tp,ta)

end subroutine 
end

