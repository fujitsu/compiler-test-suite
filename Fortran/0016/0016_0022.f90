        module mod
        type TAG
        integer,pointer,contiguous:: p(:,:)
        integer,pointer,contiguous:: q(:,:)
        end type
        end
        subroutine tt(s)
        use mod
        type(TAG) s
        if (SIZE(s%p) .gt. 1) then
            if (SIZE(s%p)/=6) print *,101
        call sub()
        if (SIZE(s%p(:,:)) .gt. 1) then
            if (SIZE(s%p(:,:))/=6) print *,101
        call sub()
        endif
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

