      data item/z'00000009'/
      data expt/z'ffffffff'/
      data comp/z'ffffffff'/
      data ikeyc/z'00000064'/
      data ierrc/z'00000000'/
      diff = comp - expt                                                        
      if (expt.ne.0.0)  then                                                    
        erro = abs(diff/expt)                                                   
        else                                                                    
          erro = abs(diff)                                                      
      endif                                                                     
      rjst = 5.0e-5 - erro                                                      
      if (comp.eq.expt)  go to 1310                                             
      if (rjst.lt.0.0)  go to 1300                                              
      if (ierrc.eq.10)  go to 1300                                              
      go to 1310                                                                
 1300 if (ikeyc.eq.100) then                                                    
        ierrc = 10                                                              
        elseif (ikeyc.eq.10)  then                                              
          write(6,'(/,43x,z8,29x,z8,27x,z8)')  comp,expt,diff                   
        else                                                                    
          write(6,'(/,3x,7h*error*,2x,2h( ,i2,2h ),25x,z8,29x,                  
     1          z8,27x,z8)')  item,comp,expt,diff                               
      endif                                                                     
      stop                                                                    
 1310 if (ikeyc.ne.100) then                                                    
        if (ikeyc.eq.10)  then                                                  
          write(6,'(/,43x,z8,29x,z8)')  comp,expt                               
          else                                                                  
            write(6,'(/,3x,7h* ok  *,2x,2h( ,i2,2h ),25x,z8,                    
     1            29x,z8)')  item,comp,expt                                     
        endif                                                                   
      endif                                                                     
      print *,'ok'
      stop                                                                    
      end                                                                       
