module m1
contains
   subroutine p1(i)
     character*(*) c
     write(16,*)i
     return
   entry p2(c)
     write(16,*)c
   end subroutine
end
   subroutine p2(i)
     character*(*) c
     write(16,*)i
     return
   entry p1(c)
     write(16,*)c
   end subroutine
do i=1,3
call s1
call s2
end do
call chk
print *,'pass'
end
subroutine s1
use m1
call subi(p1)
call subc(p2)
end
subroutine s2
external p1,p2
call subi(p2)
call subc(p1)
end
subroutine subi(p)
call p(100)
end
subroutine subc(p)
call p('200')
end
subroutine chk
integer i
rewind 16
do j=1,6
read(16,*)i;if(i/=100)write(6,*) "NG"
read(16,*)i;if(i/=200)write(6,*) "NG"
end do
end
