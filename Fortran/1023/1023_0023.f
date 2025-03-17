       common a1,a2,a3
       a1=1
       a2=2
       a3=3
       call sub() 
       call sub2() 
       call sub3() 
       end

       subroutine sub()
       common b1,b2,b3
       print *,'b1=',b1
       entry sub2()
       print *,'b2=',b2
       entry sub3()
       print *,'b3=',b3
       end
