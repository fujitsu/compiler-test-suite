 character (len=4), allocatable :: a1
 call s1(a1)
print *,'pass'
         contains
            subroutine s1(d1)
         character(len=*), allocatable::  d1
         character(len=3) :: ch1
         ch1 = "HCL"
          allocate(d1,mold=ch1,stat=kk)
if(kk==0) print *,201
        end subroutine
end
