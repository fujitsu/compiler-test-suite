      module n02
        interface
           subroutine s1(p)
        type :: t1 
           integer :: xx
        end type 
        type :: type01
           integer :: x
           type(t1)::z
        end type type01
            type(type01) :: p
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
