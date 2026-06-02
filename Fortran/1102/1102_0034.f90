      module n02       
        interface     
           subroutine s1() 
          end subroutine s1
        end interface
      end 

   module w
    interface 
       module subroutine sub (proc)     
         use ::n02
         procedure (s1) :: proc 
       end subroutine
       module subroutine s3     
       end
    end interface
   end
    
   submodule (w) smod            
     contains
       module procedure  sub
         use ::n02
      !!   procedure (s1) :: proc 
         call proc()
       end 
    end
    
     use w                   
       print *,'sngg205o : pass'
     end 

           subroutine pr() 
          end 
