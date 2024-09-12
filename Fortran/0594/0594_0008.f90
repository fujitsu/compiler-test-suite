            integer::x
            x = fun(inn)
            if(x.ne.12)print*,"101"
           contains
           function inn()
             integer::inn
             inn =12
             print*,"PASS"
           end function
           function fun(f) result(res)
              procedure(inn), pointer, intent(in) :: f
              integer::res
              res = f()
              if(res.ne.12)print*,"102"
           end function
          end
