module m1
contains
  subroutine s1(art)
   type(*),dimension(..)::art
   write(47,*) loc(art)
  end
  subroutine s2(ar)
   integer,dimension(..)::ar
   write(47,*) loc(ar)
  end
  subroutine s3(ats)
   type(*)::ats
   write(47,*) loc(ats)
  end
  subroutine s4(ata)
   type(*)::ata(:)
   write(47,*) loc(ata)
  end
end
module m2
contains
subroutine t1(a)
use m1
   type(*),dimension(..)::a
integer:: v1,v2(2)
call s1(a)
call s1(v1)
call s1(v2)
call s2(v1)
call s2(v2)
call s3(v1)
call s4(v2)
end
end
use m2
integer:: v
call t1(v)
print *,'sngg734l : pass'
end

