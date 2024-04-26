         call s1(2)
         call s1(4)
print *,'pass'
         contains
         subroutine s1(d1)
         integer :: d1
         character(len=d1+1),pointer :: cptr => NULL()
         character(len=d1+1),pointer :: cptr2 => NULL()
        end subroutine
        end

