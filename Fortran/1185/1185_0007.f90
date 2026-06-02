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
      
     use z                     ! 15)
       print *,'sngg561o : pass'
     end 
