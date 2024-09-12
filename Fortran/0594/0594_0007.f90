            interface 
             subroutine  inn()
             end subroutine
            end interface
            x = sub(inn)
            if(x.ne.12)print*,"101"
           contains
           function sub(f) result(res)
              procedure(inn), pointer, intent(in) :: f
              integer::res
              call f()
              res =12
           end function sub
          end
           subroutine  inn()
           print*,"PASS"
           end subroutine


