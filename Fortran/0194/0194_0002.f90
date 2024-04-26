         call s1(2)
         call s1(4)
rewind 1
read(1,*) k;if (k/=2) print *,201
read(1,*) k;if (k/=2) print *,202
read(1,*) k;if (k/=4) print *,203
read(1,*) k;if (k/=4) print *,204
print *,'pass'
         contains
         subroutine s1(d1)
         integer :: d1
         character(len=d1),pointer :: cptr => NULL()
         character(len=d1),pointer :: cptr2 => NULL()
         write(1,*)len(cptr)
         write(1,*)len(cptr2)
        end subroutine
        end

