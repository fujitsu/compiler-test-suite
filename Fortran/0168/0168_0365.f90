       call sub(2)
print *,'pass'
       contains
       subroutine sub(k)
       character(len=k),allocatable::c3(:)
       character*100 m
m=''
       allocate(c3,mold=['xxx'],errmsg=m,stat=n)
if (n==0) print *,101
if (len_trim(m)==0) print *,201
       end subroutine
       end
