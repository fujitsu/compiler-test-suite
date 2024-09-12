            interface 
           function fun(f) result(res)
              procedure(), pointer, intent(in) :: f
              integer::res
            end function
           subroutine sub(f)
              procedure(), pointer, intent(in) :: f
           end subroutine
           function fun2(s,f) result(res)
              procedure(), pointer, intent(in) :: s
              procedure(), pointer, intent(in) :: f
              integer::res
           end function fun2
           subroutine sub2(s,f)
              procedure(), pointer, intent(in) :: s
              procedure(), pointer, intent(in) :: f
           end subroutine
            end interface

            integer::x,y
            x = fun(inn)
            call sub(inn)
            y = fun2(inn,innf)
            call sub2(inn,innf)
            if(x.ne.12)print*,"101"
            if(y.ne.10)print*,"102",y
            contains
           subroutine  inn()
           print*,"PASS"
           end subroutine
           function innf(x)
           integer::x
           integer::innf
           innf = x
           end function
           end
           function fun(f) result(res)
              procedure(), pointer, intent(in) :: f
              integer::res
              call f()
              res =12
           end function fun
           subroutine sub(f)
              procedure(), pointer, intent(in) :: f
              call f()
           end subroutine
           function fun2(s,f) result(res)
              procedure(), pointer, intent(in) :: s
              procedure(integer), pointer, intent(in) :: f
              integer::res
              call s()
              res = f(10)
           end function fun2
           subroutine sub2(s,f)
              integer::res
              procedure(), pointer, intent(in) :: s
              procedure(integer), pointer, intent(in) :: f
              call s()
              res = f(10)
              if(res.ne.10)print*,"104"
           end subroutine


