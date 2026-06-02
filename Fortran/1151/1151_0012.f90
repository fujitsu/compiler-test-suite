        class(*),pointer :: x
        class(*),pointer :: y
        logical::l
type,ABSTRACT :: aaa
integer ::aaaa
 contains
 procedure(asame_type_as),DEFERRED,nopass :: aasame_type_as
end type
class (aaa),pointer :: str
interface 
logical function asame_type_as(x, y)
        class(*),pointer :: x
        class(*),pointer :: y
end
endinterface
        allocate(x,source=1)
        allocate(y,source=1)
        x => y
if (1.eq.2 ) then
        if (associated(x) .and. &
             str%aasame_type_as(x, y) .and. &
             (loc(x)==loc(y))) then
            l = .true.
        end if
end if
        select type(z=>x)
        type is (integer)
        if(.not.associated(x,y)) print *,'err1'
        l=.false.
if (1.eq.2) then
        if (associated(x) .and. &
             str%aasame_type_as(x, y) .and. &
             (loc(x)==loc(y))) then
            l = .true.
        end if
        end if
       if(l) print *,'err2'
       
        class default
           print *,'ng'
        end select
        print *,'pass'
        end
logical function asame_type_as(x, y)
        class(*),pointer :: x
        class(*),pointer :: y
asame_type_as=.false.
end
