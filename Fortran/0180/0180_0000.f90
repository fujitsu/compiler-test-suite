        module mod
        type TAG
        integer,pointer,contiguous:: p(:,:)
        integer,pointer,contiguous:: q(:,:)
        end type
        contains
        subroutine tt(s)
        type(TAG),pointer:: s(:)
        if (SIZE(s(2)%p) .gt. 1) then
            if (SIZE(s(2)%p)/=6) print *,101
        call sub()
        endif
        if (SIZE(s(2)%p(:,:)) .gt. 1) then
            if (SIZE(s(2)%p(:,:))/=6) print *,102
        call sub()
        endif
        end
        end
        use mod
        type(TAG),pointer:: s(:)
   allocate( s(2))
        allocate(s(2)% p(3,2))
        call tt(s)
        print *,'pass'
        end
   subroutine sub
   end

