integer a(3:5)
      write(1,*) 1,lbound(a)
      write(1,*) 2,ubound(a)
      call sub1(a)
      call sub2(a)
rewind 1
read(1,*) n,k
if (k/=3)print  *,101
read(1,*) n,k
if (k/=5)print  *,102
read(1,*) n,k
if (k/=1)print  *,103
read(1,*) n,k
if (k/=3)print  *,104
read(1,*) n,k
if (k/=1)print  *,105
read(1,*) n,k
if (n/=6)print  *,106
if (k/=3)print  *,107
print *,'pass'
      contains
      subroutine sub1(a)
      integer a(:)
      write(1,*) 3,lbound(a)
      write(1,*) 4,ubound(a)
      end subroutine
      subroutine sub2(a)
      integer a(..)
      write(1,*) 5,lbound(a)
      write(1,*) 6,ubound(a)
      end subroutine
      end
