       common a,b,/name/c
       a=1;b=2;c=3
       call sub()
       call sub2()
       end
 
       subroutine sub()
       common z
       print *,z
       return
       end
       subroutine sub2()
       common /name/z
       print *,z
       return
       end
