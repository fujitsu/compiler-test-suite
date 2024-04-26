      module mod01
        type :: type01
           integer :: x
        end type type01
        type :: type02
           integer :: x
        end type
      end module mod01
     
      module n02
        interface
           subroutine s1(p,p2)
            use mod01
            type(type01) :: p
            type(type02) :: p2
          end subroutine s1
        end interface
      end 
    
     module k3
     contains
       subroutine sub (proc)
         use ::n02
         procedure (s1) :: proc
       end subroutine sub
     end
    
     use k3
   




       print *,'pass'
     end 
