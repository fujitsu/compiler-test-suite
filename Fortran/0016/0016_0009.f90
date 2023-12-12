        module mod
        type TAG
        integer,pointer:: p(:,:)
        integer,pointer:: q(:,:)
        end type
        end
        subroutine tt(s)
        use mod
        type(TAG) s
        if (SIZE(s%p, 1) .gt. 1) then
          print *,301
        else
            if (SIZE(s%p,1)/=0) print *,101
        endif
        call sub()
        end
        use mod
        type(TAG) s
        allocate(s% p(-3,2))
        call tt(s)
        print *,'OK'
        end
   subroutine sub
   end

