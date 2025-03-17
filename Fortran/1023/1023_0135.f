       dimension a(3),b(4),c(5)
       common a,b,c
       a(1)=1;a(2)=2;a(3)=3
       b(1)=1;b(2)=2;b(3)=3;b(4)=4
       c(1)=1;c(2)=2;c(3)=3;c(4)=4;c(5)=5
       call sub1()
       call sub2()
       end
 
       subroutine sub1()
       dimension a(3),b(4),c(5)
       common a,b,c
       print *,a,b,c
       end
 
       subroutine sub2()
       common a(3),b(4),c(5)
       print *,a,b,c
       end
