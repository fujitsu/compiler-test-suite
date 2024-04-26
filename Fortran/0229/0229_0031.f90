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
     contains
       subroutine sub (p1,p2,p3,p4)
         use ::n02
         procedure (s1) :: p1
         procedure (s1) :: p2
         procedure (s1) :: p3
         procedure (s1) :: p4
       end subroutine sub
     end
    
     use k3
   




       print *,'pass'
     end 
