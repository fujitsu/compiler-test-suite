module mod
 type ty3
  sequence
  integer,pointer :: i
  procedure(len),pointer,nopass :: ia
 end type
end

use mod
type(ty3) :: str3
common /com/str3
i=str3%ia("aaa")
end
