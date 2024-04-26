        module mod
        type TAG
        integer,pointer,contiguous:: p(:,:)
        integer,pointer,contiguous:: q(:,:)
        end type
        contains
        subroutine tt(s)
        integer,pointer:: s(:,:)
        if (s(1,1)/=1) print *,201
        if (s(3,2)/=6) print *,206
        n=2
        if (s(n,1)/=2) print *,202
        if (s(1,n)/=4) print *,204
        if (s(n,n)/=5) print *,205
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
        allocate(s(2)% p(3,2),source=reshape([1,2,3,4,5,6],[3,2]))
        call tt(s(2)%p)
        print *,'pass'
        end
   subroutine sub
   end

