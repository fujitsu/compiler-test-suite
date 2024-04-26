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
         character(len=4),target :: trg='1234'
         character(len=2),target :: trg1='ab'
         character(len=d1),pointer :: cptr => NULL()
         character(len=d1),pointer :: cptr2 => NULL()
         write(1,*)len(cptr)
         write(1,*)len(cptr2)
         if (len(cptr)==2) then
           cptr=> trg1
           if (cptr/='ab') print *,301
           cptr2=> trg1
           if (cptr2/='ab') print *,302
         else
           cptr=> trg
           if (cptr/='1234') print *,321
           cptr2=> trg
           if (cptr2/='1234') print *,322
         endif
        end subroutine
        end

