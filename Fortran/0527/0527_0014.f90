      module mod01
        type :: type01    
           integer :: x
        end type type01
     end
      module mod02
        type :: type01    
           integer :: x
        end type
     end
      module mod03
        type :: type01    
           integer :: x
        end type
      end 

      module n02          
        contains           
           subroutine s1(p) 
            use mod01
            type(type01) :: p
            p%x=1
          end subroutine 
           subroutine s2(p) 
            use mod02
            type(type01) :: p
            p%x=1
          end subroutine
           subroutine s3(p) 
            use mod03
            type(type01) :: p
            p%x=1
          end subroutine
      end 

     module k3                  
     contains
       subroutine sub1 (proc)  
         use ::n02
         use mod01
         procedure (s1) :: proc
         type(type01)::x
         call proc(x)
         if (x%x/=1) print *,1001
       end subroutine 
       subroutine sub2 (proc)  
         use ::n02
         use mod02
         type(type01)::x
         procedure (s2) :: proc
         call proc(x)
         if (x%x/=1) print *,1001
       end subroutine 
       subroutine sub3 (proc)  
         use ::n02
         use mod03
         type(type01)::x
         procedure (s3) :: proc
         call proc(x)
         if (x%x/=1) print *,1001
       end subroutine 
     end

     use k3                   
 call tt
       print *,'pass'
     end 
subroutine tt
use k3
use n02
         procedure (s1) :: w1
         procedure (s2) :: w2
         procedure (s3) :: w3
call sub1(w1)
call sub2(w2)
call sub3(w3)
end
           subroutine w1(p) 
            use mod01
            type(type01) :: p
            p%x=1
          end subroutine 
           subroutine w2(p) 
            use mod02
            type(type01) :: p
            p%x=1
          end subroutine
           subroutine w3(p) 
            use mod03
            type(type01) :: p
            p%x=1
          end subroutine
