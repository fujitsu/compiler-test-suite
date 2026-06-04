        class(*),pointer :: x
        class(*),pointer :: y
        logical::l
interface asame_type_as
logical function asame_type_as(x, y)
        class(*),pointer :: x
        class(*),pointer :: y
end
endinterface
        allocate(x,source=1)
        allocate(y,source=1)
        x => y
        select type(z=>x)
        type is (integer)
        if(.not.associated(x,y)) print *,'err1'
        l=.false.
        if (associated(x) .and. &
             asame_type_as(x, y) .and. &
             (loc(x)==loc(y))) then
            l = .true.
        end if
       if(.not.l) print *,'err2'
       
        class default
           print *,'ng'
        end select
        print *,'pass'
        end
logical function asame_type_as(x, y)
        class(*),pointer :: x
        class(*),pointer :: y
asame_type_as = .not..false.
end
