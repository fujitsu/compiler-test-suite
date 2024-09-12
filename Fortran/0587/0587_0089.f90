 Module m1
         integer,target :: ii=6
         contains
            subroutine s1(d)
            integer :: d
            d=d+1
           end subroutine
        end module
        module m2
        use m1,jj=>ii,s2=>s1
             type ty
              procedure(),nopass,pointer:: ptr1=>s2
              procedure(s2),nopass,pointer:: ptr2=>s2
              integer,pointer::ptr=>jj
              end type
        end
        use m2
          type(ty)::obj
          call obj%ptr1(jj)
          call obj%ptr2(jj)
          if(obj%ptr .ne. 8)print*,"122", jj
          print*,"Pass"
        end

