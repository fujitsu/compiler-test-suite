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
           function p1() 
            use mod01
            type(type01) :: p1
            p1%x=1
          end function 
           function p2() 
            use mod02
            type(type01) :: p2
            p2%x=1
          end function
           function p3() 
            use mod03
            type(type01) :: p3
            p3%x=1
          end function
      end 

     module k3                  
     contains
       subroutine sub1 (proc)  
         use ::n02
         use mod01
         procedure (p1) :: proc
         type(type01)::x
         x=   proc()
         if (x%x/=1) print *,1001
       end subroutine 
       subroutine sub2 (proc)  
         use ::n02
         use mod02
         type(type01)::x
         procedure (p2) :: proc
         x=   proc()
         if (x%x/=1) print *,1001
       end subroutine 
       subroutine sub3 (proc)  
         use ::n02
         use mod03
         type(type01)::x
         procedure (p3) :: proc
         x=proc()
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
         procedure (p1) :: w1
         procedure (p2) :: w2
         procedure (p3) :: w3
call sub1(w1)
call sub2(w2)
call sub3(w3)
end
           function w1() result(p)
            use mod01
            type(type01) :: p
            p%x=1
          end function 
           function w2() result(p)
            use mod02
            type(type01) :: p
            p%x=1
          end function
           function w3() result(p)
            use mod03
            type(type01) :: p
            p%x=1
          end function