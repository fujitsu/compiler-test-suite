module m1
contains
  subroutine s1(art) bind(c)
   type(*),dimension(..)::art
   write(48,*) loc(art)
  end
  subroutine s2(ar) bind(c)
   integer,dimension(..)::ar
   write(48,*) loc(ar)
  end
  subroutine s3(ats) bind(c)
   type(*)::ats
   write(48,*) loc(ats)
  end
!  subroutine s4(ata) bind(c)
!   type(*)::ata(2)
!   write(48,*) loc(ata)
!  end
end
module m2
contains
subroutine t1(a) bind(c)
use m1
   type(*),dimension(..)::a
integer:: v1,v2(2)
call s1(a)
call s1(v1)
call s1(v2)
call s2(v1)
call s2(v2)
call s3(v1)
!call s4(v2)
end
end
use m2
integer:: v
call t1(v)
print *,'sngg735l : pass'
end

