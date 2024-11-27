          call s1(2)
          call s1(4)
         contains
         subroutine s1(d1)
         integer :: d1
         character(len=4),target,save :: trg
         character(len=d1),pointer :: cptr => trg
         character(len=d1),pointer :: cptr2 =>trg
         print*,len(cptr)
         print*,len(cptr2)
        end
        end

