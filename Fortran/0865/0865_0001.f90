module mod
contains
subroutine msub()
end
end
use mod   
         procedure(),pointer :: ip
type ty1
         procedure(),pointer,nopass :: ip
end type
type (ty1) :: str
         ip=>sub
         ip=>msub
         str=ty1(sub)
         str=ty1(msub)
         contains
          subroutine sub()
          end subroutine 
         end
