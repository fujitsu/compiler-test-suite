            integer::x,y
            x = fun(inn)
            call sub(inn)
            y = fun2(inn,innf)
            call sub2(inn,innf)
            if(x.ne.12)print*,"101"
            if(y.ne.20)print*,"102"
           contains
           subroutine  inn()
           print*,"PASS"
           end subroutine
           function innf(x)
           integer::x
           integer::innf
           innf = x+10
           end function
           function fun(f) result(res)
              procedure(inn), pointer, intent(in) :: f
              integer::res
              call f()
              res =12
           end function fun
           subroutine sub(f)
              procedure(inn), pointer, intent(in) :: f
              call f()
           end subroutine
           function fun2(s,f) result(res)
              procedure(inn), pointer, intent(in) :: s
              procedure(innf), pointer, intent(in) :: f
              integer::res
              call s()
              res = f(10)
              if(res.ne.20)print*,"301"
           end function fun2
           subroutine sub2(s,f)
              integer::res
              procedure(inn), pointer, intent(in) :: s
              procedure(innf), pointer, intent(in) :: f
              call s()
              res = f(10)
              if(res.ne.20)print*,"401"
           end subroutine
          end


