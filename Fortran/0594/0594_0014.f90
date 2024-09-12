            integer::x
            x = fun(inn)
            if(x.ne.12)print*,"101"
           contains
           subroutine  inn()
             print*,"PASS"
           end 
           function fun(f) result(res)
              procedure(inn), pointer, intent(in):: f
              integer::res
              call f()
              call sub2(f)
              res =12
           end function
           subroutine  sub2(f)
              procedure(inn), pointer, intent(in):: f
              call f()
           end 
          end
