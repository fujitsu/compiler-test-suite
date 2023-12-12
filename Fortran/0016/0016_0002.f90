        module mod
        type TAG
        integer,pointer:: p(:,:)
        integer,pointer:: q(:,:)
        end type
        end
        subroutine tt(s)
        use mod
        type(TAG) s(2)
        if (SIZE(s(2)%p, 1) .gt. 1) then
            if (SIZE(s(2)%p,1)/=3) print *,101
        call sub()
        endif
        end
        use mod
        type(TAG) s(2)
        allocate(s(2)% p(3,2))
        call tt(s)
        print *,'OK'
        end
   subroutine sub
   end

