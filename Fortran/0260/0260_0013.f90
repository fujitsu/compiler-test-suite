PROGRAM MyProgram
        implicit none
  
        variable_declaration : BLOCK            
        
        double precision :: a0

        type(double precision)       :: a1


        if(kind(a0) /= kind(a1)) print*,101
        
        BLOCK
                double precision :: a0

                type(double precision)       :: a1

                
                if(kind(a0) /= kind(a1)) print*,"101"
        END BLOCK
        END BLOCK variable_declaration    

print*,"pass"
END PROGRAM MyProgram   
