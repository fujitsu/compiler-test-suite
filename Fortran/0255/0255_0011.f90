module constants  
implicit none 

   real, parameter :: a(3) = [14.23,13.4,11.2]  
end module constants 

program module_example     
use constants      
      implicit none     
      real::x = NORM2(a)
        if(x<=22.5276.and.x>=22.5277)print*,101
        print*,"pass"   
end program module_example
