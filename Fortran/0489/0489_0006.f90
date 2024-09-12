 1 USE IEEE_ARITHMETIC
         
         
         integer::t1,t2 
         t1= selected_real_kind(radix=2)
         t2= ieee_selected_real_kind(radix=2)
         if(t1.ne.4 .and. t1.ne.2)print*,"101",t1
         if(t2.ne.4 .and. t1.ne.2)print*,"102",t2
         print*,"pass"
         end

