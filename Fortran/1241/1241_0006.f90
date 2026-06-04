 interface  aaa
 end interface
 interface                                   
  subroutine sub1() bind(C,name="proc")      
    interface                                
       subroutine sub2() !bind(C,name="proc") 
       end subroutine                        
    end interface                            
   end subroutine                            
 end interface
print *,'sngtp07:pass'
end
