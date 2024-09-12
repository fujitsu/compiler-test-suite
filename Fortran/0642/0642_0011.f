       call pro
       print *,'pass'
       end
       subroutine pro
       structure /str/
        integer a
       endstructure
       record /str/ x(10)
       x.a=1
       call sub(x)
       call sub(x(1))
       call sub(x(4))
       call sub2(x(1))
       call sub2(x)
       end
       subroutine sub(x)
       structure /str/
        integer a
       endstructure
       record /str/ x(10),y
       y=x(1)
       end
       subroutine sub2(x)
       structure /str/
        integer a
       endstructure
       record /str/ x,y
       y=x
       end
