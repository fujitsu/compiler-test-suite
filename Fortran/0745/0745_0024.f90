module m1
contains
   subroutine p1(i)
     character*(*) c
     write(17,*)i
     return
   entry p2(c)
     write(17,*)c
   end subroutine
end
   subroutine p2(i)
     character*(*) c
     write(17,*)i
     return
   entry p1(c)
     write(17,*)c
   end subroutine
do i=1,3
call s1
call s2
end do
print   *,'pass'
end
subroutine s1
use m1
write(18,*)loc(p1)
call subi(p1)
write(18,*)loc(p2)
call subc(p2)
end
subroutine s2
external p1,p2
write(18,*)loc(p2)
call subi(p2)
write(18,*)loc(p1)
call subc(p1)
end
subroutine subi(p)
call p(100)
end
subroutine subc(p)
call p('200')
end
