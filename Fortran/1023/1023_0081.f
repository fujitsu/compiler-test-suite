       common /a/data 
       call sub() 
       call sub2() 
       call sub3() 
       end

       subroutine sub()
       common /a/ data_sub
       a=0
       entry sub2()
       a=1
       entry sub3()
       a=2
       end


