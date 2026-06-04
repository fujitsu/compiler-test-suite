module z
  interface
    module subroutine sub (p)       
         interface
           subroutine   p() 
          end 
         end interface
    end subroutine
   end interface
end
      
   submodule  (z) smod 
     contains
       module subroutine sub (p)       
         interface
           subroutine   p() 
          end 
         end interface
       end 
     end
    
     use z                     ! 15)
       print *,'sngg560o : pass'
     end 
