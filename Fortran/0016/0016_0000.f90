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
            if (SIZE(s%p,1)/=3) print *,101
        call sub()
        endif
        end
        use mod
        type(TAG) s
        allocate(s% p(3,2))
        call tt(s)
        print *,'OK'
        end
   subroutine sub
   end

