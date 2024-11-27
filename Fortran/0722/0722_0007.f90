       real*8 a(100,100),b(100,100)
       interface
       subroutine sub
       end subroutine
       function fun()
       end function
       function fun1()
       end function
       end interface
       do j=1,100
       do i=1,100
         a(i,j)=b(i,j)+i
       enddo
       enddo
       write(6,*) a(5,5)
       end
