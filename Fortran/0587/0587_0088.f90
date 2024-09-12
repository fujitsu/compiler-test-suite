Module m1
          contains
            subroutine s1(d)
            integer :: d
            d=d+1
           end subroutine
        
         end module
         module m2
        use m1,s2=>s1
              type ty
              procedure(),nopass,pointer:: ptr1=>s2
              procedure(s2),nopass,pointer:: ptr2=>s2
              end type
        end
        use m2
          integer::jj =4
          type(ty)::obj
          call obj%ptr1(jj)
          call obj%ptr2(jj)
          if(jj .ne. 6)print*,"122"
          print*,"Pass"
       24 end

