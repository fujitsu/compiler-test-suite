      module mod01
        type :: type01    
           integer :: x
        end type type01
     end
      module mod02
        type :: type02    
           integer :: y
        end type
     end
      module mod03
        type :: type03    
           integer :: z
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
            type(type02) :: p2
            p2%y=1
          end function
           function p3() 
            use mod03
            type(type03) :: p3
            p3%z=1
          end function
      end 

     module k3                  
     contains
       subroutine sub1 (proc,proc2,proc3)
         use ::n02
         use mod01
         use mod02
         use mod03
         procedure (p1) :: proc
         type(type01)::x
         type(type02)::y
         type(type03)::z
         procedure (p3) :: proc3
         procedure (p2) :: proc2
         x=   proc()
         if (x%x/=1) print *,1001
         y=   proc2()
         if (y%y/=1) print *,1001
         z=proc3()
         if (z%z/=1) print *,1001
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
call sub1(w1,w2,w3)
end
           function w1() result(p)
            use mod01
            type(type01) :: p
            p%x=1
          end function 
           function w2() result(p)
            use mod02
            type(type02) :: p
            p%y=1
          end function
           function w3() result(p)
            use mod03
            type(type03) :: p
            p%z=1
          end function
