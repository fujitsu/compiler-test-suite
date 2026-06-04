        class(*),pointer :: x
        class(*),pointer :: y
        logical::l
        allocate(x,source=1)
        allocate(y,source=1)
        x => y
        select type(z=>x)
        type is (integer)
        if(.not.associated(x,y)) print *,'err1'
        l=.false.
        if (associated(x) .and. &
             same_type_as(x, y) .and. &
             (loc(x)==loc(y))) then
            l = .true.
        end if
        if(.not.l) print *,'err2'
       
        class default
           print *,'ng'
        end select
        print *,'pass'
        end
