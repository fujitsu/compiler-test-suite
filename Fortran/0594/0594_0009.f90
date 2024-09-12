            call s()
           contains
           subroutine s()
            x = sub(inn)
            if(x.ne.12)print*,"101"
           end
           function sub(f) result(res)
              procedure(), pointer, intent(in) :: f
              integer::res
              call f()
              res =12
           end function sub
           subroutine  inn()
           print*,"PASS"
           end subroutine
           end


