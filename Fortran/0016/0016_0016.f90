        module mod
        type TAG
        integer,pointer,contiguous:: p(:,:)
        integer,pointer,contiguous:: q(:,:)
        end type
        contains
        subroutine tt(s)
        type(TAG),pointer:: s(:)
        if (SIZE(s(2)%p, 1) .gt. 1) then
            if (SIZE(s(2)%p,1)/=3) print *,101
        call sub()
        endif
        if (SIZE(s(2)%p(:,:), 1) .gt. 1) then
            if (SIZE(s(2)%p(:,:),1)/=3) print *,101
        call sub()
        endif
        end
        end
        use mod
        type(TAG),pointer:: s(:)
   allocate( s(2))
        allocate(s(2)% p(3,2))
        call tt(s)
        print *,'OK'
        end
   subroutine sub
   end

