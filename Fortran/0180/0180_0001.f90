        module mod
        type TAG
        integer,pointer,contiguous:: p(:,:)
        integer,pointer,contiguous:: q(:,:)
        end type
        contains
        subroutine tt(s)
        integer,pointer:: s(:,:)
        if (SIZE(s) .gt. 1) then
            if (SIZE(s)/=6) print *,101
        call sub()
        endif
        if (SIZE(s(:,:)) .gt. 1) then
            if (SIZE(s(:,:))/=6) print *,102
        call sub()
        endif
        if (SIZE(s,1) .gt. 1) then
            if (SIZE(s,1)/=3) print *,111
        call sub()
        endif
        end
        end
        use mod
        type(TAG),pointer:: s(:)
   allocate( s(2))
        allocate(s(2)% p(3,2))
        call tt(s(2)%p)
        print *,'pass'
        end
   subroutine sub
   end

