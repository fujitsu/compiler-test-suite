      module n02
        interface
           function      p()
        type :: t1 
           integer :: xx
        end type 
        type :: type01
           integer :: x
           type(t1)::z
        end type type01
            type(type01) :: p
          end 
        end interface
      end 
     module k3
     contains
       subroutine sub (proc)
         use ::n02
         procedure (p) :: proc
       end subroutine sub
     end
     use k3
       print *,'pass'
     end 
