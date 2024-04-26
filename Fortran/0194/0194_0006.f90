         call s1(2)
         call s1(4)
print *,'pass'
         contains
         subroutine s1(d1)
         integer :: d1
         procedure (character(len=d1)),pointer :: cptr => NULL()
        end subroutine
        end

