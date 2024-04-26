      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
     module k3
        use mod01
        private
        public::sub
     contains
       subroutine sub (p)       
         interface
           function   p() 
            use mod01
            type(type01) :: p
          end function
         end interface
       end subroutine sub
     end
    
     use k3      
       print *,'pass'
     end 
