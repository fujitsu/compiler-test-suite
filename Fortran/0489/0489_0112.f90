        6   integer,target :: s1 = 5
        7   integer,target :: s2 = 50
        9   type ty1
       10      integer :: t1 = 10
       11      integer :: t2 = 20
       12      integer,pointer :: p1 => s2
       13   endtype ty1
       15   type(ty1),target :: str0
       16   type(ty1),target :: str1 = ty1(3,4,s1)
       18   str0 = ty1(30,40,s1)
          write(47,*)str0%t1,str0%t2,str0%p1
          write(47,*)str1%t1,str1%t2,str1%p1
rewind 47
read(47,*) n1,n2,n3
if (any([30,40,5]/=[n1,n2,n3])) print *,101
read(47,*) n1,n2,n3
if (any([3,4,5]/=[n1,n2,n3])) print *,102
print *,'pass'
       23 end program
