       type str
        integer a
       endtype
       type (str) x(10)
       call sub(x)
       call sub(x(1))
       call sub(x(4))
       call sub2(x(1))
       call sub2(x)
       print *,'pass'
       end
       subroutine sub(x)
       type str
        integer a
       endtype
       type (str) x(10)
       end
       subroutine sub2(x)
       type str
        integer a
       endtype
       type (str) x
       end
