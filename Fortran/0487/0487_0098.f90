        1 call s1(2)
        2 call s1(4)
rewind 1
read(1,*) k1,k2
if (any([k1,k2]/=[2,4])) print *,201
print *,'pass'
        3 contains
        4 subroutine s1(d1)
        5 integer :: d1
        8 character(len=d1),pointer :: cptr => NULL()
        9 write(1,*)len(cptr)
       10 end
       11 end
