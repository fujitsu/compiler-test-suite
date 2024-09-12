      module mod01
        type :: type01(k)
           integer,kind::k    
           integer :: x
        end type type01
      end module mod01

     module k3                  
     contains
       subroutine sub (proc,p1,p2)  
         use mod01
         interface
           subroutine s1(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s1) :: proc
         interface
           subroutine s2(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s2) :: p2
         interface
           subroutine s3(p) 
            import ::type01
            type(type01(2)) :: p
           end subroutine 
         end interface
         procedure (s3) :: p
       end subroutine 
     end

     use k3                   
       print *,'pass'
     end 
