module m1
  type x1
   integer(1)::d=1
  end type
  type x2
   integer(2)::d=2
  end type
  type x3
   integer(4)::d=4
  end type
  type x4
   integer(8)::d=8
  end type
 type x
   integer(8)::d1
   type(x1),allocatable::n1
   type(x2),allocatable::n2
   type(x3),allocatable::n3
   type(x4),allocatable::n4
 end type
contains
  recursive subroutine s(v,k)
     class(*)::v
     select type(v)
       type is(x)
         k=k+1
         call s(v%n1,k)
         call s(v%n2,k)
         call s(v%n3,k)
         call s(v%n4,k)
       type is(x1)
         k=k+2
         call s(v%d,k)
       type is(x2)
         k=k+4
         call s(v%d,k)
       type is(x3)
         k=k+8
         call s(v%d,k)
       type is(x4)
         k=k+16
         call s(v%d,k)
       type is(integer(1))
         k=k+32
         if (v/=1) print *,2001
       type is(integer(2))
         k=k+64
         if (v/=2) print *,2002
       type is(integer(4))
         k=k+128
         if (v/=4) print *,2003
       type is(integer(8))
         k=k+256
         if (v/=8) print *,2004
       class default
         print *,292
     end select
  end
end
use m1
     class(x),allocatable::v
     allocate(x::v)
     allocate(v%n1)
     allocate(v%n2)
     allocate(v%n3)
     allocate(v%n4)

     k=0
     call s(v,k)
     write(1,'(b16.16)')k
     call chk
    print *,'sngg602t : pass'
end
subroutine chk
   character(16)::x
     rewind 1
    read(1,'(a)') x
    if (x/='0000000111111111') print *,x
end



