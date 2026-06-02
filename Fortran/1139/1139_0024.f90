module m1
contains
         subroutine sub(a,a1)
         class (*),pointer :: a,a1
         select type (p=>a)
         type is (integer(1))
            if(.not. associated(a,a1)) print *,20002
         class default
            print *, 'ng'
         end select
        end subroutine sub
end
use m1
         class (*),pointer :: a,a1
allocate(a,source=1_1)
a1=>a
call sub(a,a1)
print *,'sngg261k : pass'
end
       


