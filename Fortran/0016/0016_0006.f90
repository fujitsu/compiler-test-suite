        module mod
        type TAG
        integer,pointer:: p(:,:)
        integer,pointer:: q(:,:)
        end type
        contains
        subroutine tt(s)
        type(TAG),pointer:: s(:)
        if (SIZE(s(2)%p, 1) .gt. 1) then
            print *,101
        else
            if (SIZE(s(2)%p,1)/=0) print *,102
        endif
        call sub()
        end
        end
        use mod
        type(TAG),pointer:: s(:)
   allocate( s(2))
        allocate(s(2)% p(-3,2))
        call tt(s)
        print *,'OK'
        end
   subroutine sub
   end

