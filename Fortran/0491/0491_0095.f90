implicit none
        5   integer,target :: s1 = 5
        6   integer,target :: s2 = 50
        7   integer,target :: s3 = 7
        8   integer,target :: s4 = 70
       10   type ty0
       11      integer,pointer :: p1 => s1
       12      integer,pointer :: p2 => s2
       13   end type ty0
       15   type ty1
       16      integer :: t1 = 1
       17      integer :: t2 = 2
       18      type(ty0) :: ta = ty0(s3,s4)
       19   endtype ty1
       21   type(ty1),target :: str1
if (str1%ta%p2/=70) print *,901
print *,'pass'
        end program
