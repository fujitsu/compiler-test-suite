      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
      module n02
        interface
           subroutine s1(p1,p2,p3,p4,p5)
            use mod01
            type(type01) :: p1,p2,p3,p4,p5
          end subroutine s1
        end interface
      end 
     module k3
integer::x,xx
     contains
       subroutine sub (p1,p2,p3,p4)
         use ::n02
         procedure (s1) :: p1
         procedure (s1) :: p2
         procedure (s1) :: p3
         procedure (s1) :: p4
       end subroutine sub
     end
  module u1
     use k3,only:x
     use k3,only:xx
end
  module u2
     use u1,only:x
     use u1,only:xx
end
use u2,only:x,xx
       print *,'pass'
     end 
