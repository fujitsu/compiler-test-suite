       program main  
        implicit none
  !$omp parallel default(none)  
        call foo(0)            
        call foo(1)           
  !$omp end parallel         
print *,'pass'
   end                     
        subroutine foo(iflag) 
          integer iflag      
          type xxx          
            double precision, allocatable:: elm(:)    
          end type                                    
          type(xxx), allocatable, save :: wk(:)       
     !$omp threadprivate(wk)                           
     if (iflag .eq. 0) then                      
        allocate(wk(100))                         
        allocate(wk(100)%elm(2))                   
        write(16,'("step 1 : 0x",z16.16)') loc(wk) 
     else if (iflag .eq. 1) then                 
        write(16,'("step 2 : 0x",z16.16)') loc(wk) 
        write(16,*) allocated(wk)
        write(16,*) allocated(wk(100)%elm)
        wk(100)%elm(2) = 1.0d0                   
     endif                                       
     end                                         

