        module mod
        type TAG
        integer,pointer:: p(:,:)
        integer,pointer:: q(:,:)
        end type
        contains
        subroutine tt(s)
        type(TAG),pointer:: s(:)
        if (SIZE(s(2)%p) .gt. 1) then
            if (SIZE(s(2)%p)/=6) print *,101
        call sub()
        endif
        if (SIZE(s(2)%q) .gt. 1) then
            if (SIZE(s(2)%q)/=6) print *,101
        call sub()
        endif
        end
        end
        use mod
        type(TAG),pointer:: s(:)
   allocate( s(2))
        allocate(s(2)% p(3,2))
        allocate(s(2)% q(3,2))
        call tt(s)
        print *,'OK'
        end
   subroutine sub
   end

