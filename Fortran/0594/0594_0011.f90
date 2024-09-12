            integer::x
            x = fun(inn)
            if(x.ne.12)print*,"101"
           contains
           subroutine  inn()
            integer::x
            x = fun(s2)
            if(x.ne.12)print*,"102"
            print*,"PASS"
           end subroutine
           function fun(f) result(res)
              procedure(inn), pointer, intent(in) :: f
              integer::res
              call f()
              res =12
           end function fun
           subroutine s2()
               print*,"pass"
           end
           end


