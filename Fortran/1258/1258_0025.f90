module m1
  type x1
   class(* ),allocatable::d
  end type
  type x2
   class(* ),allocatable::d
  end type
  type x3
   class(* ),allocatable::d
  end type
  type x4
   class(* ),allocatable::d
  end type
 type x
   integer(8)::d1
   class(* ),allocatable::n1
   class(*),allocatable::n2
   class(*),allocatable::n3
   class(*),allocatable::n4
 end type
contains
  recursive subroutine s(v,k)
     class(*),optional,allocatable::v
     select type(v)
       type is(x)
         k=k+1
         call s(     k=k)
       type is(x1)
         k=k+2
         allocate(v%d,source=1_1)
         call s(    k=k)
       type is(x2)
         k=k+4
         allocate(v%d,source=2_2)
         call s(v%d,k)
       type is(x3)
         k=k+8
         allocate(v%d,source=4_4)
         call s(v%d,k)
       type is(x4)
         k=k+16
         allocate(v%d,source=8_8)
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
subroutine ss
use m1
     class(*),allocatable::v
     allocate(x::v)
select type(v)
  type is(x)
     allocate(x1::v%n1)
     allocate(x2::v%n2)
     allocate(x3::v%n3)
     allocate(x4::v%n4)
end select

     k=0
     call s(k=k)
     write(9,'(b16.16)')k
     call chk
end
    print *,'sngg609t : pass'
end
subroutine chk
   character(16)::x
     rewind 9
    read(9,'(a)') x
    if (x/='0000000111111111') print *,x
end
