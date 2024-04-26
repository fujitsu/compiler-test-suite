module m1
  interface
     subroutine s01(a)
      integer,optional::a(2)
     end subroutine
  end interface
  contains
     subroutine s02(a)
     entry      s03(a)
      integer,optional::a(2)
      if (present(a)) print *,201
     end subroutine
     subroutine s(b)
      integer,optional::b(:)
  call s01(b)
  call s02(b)
  call s03(b)
  call s04(b)
  call s07(b)
   contains
     subroutine s07(a)
      integer,optional::a(2)
      if (present(a)) print *,601
     end subroutine
     end subroutine
     subroutine s04(a)
     entry      s05(a)
      integer,optional::a(2)
      if (present(a)) print *,401
     end subroutine
end 
subroutine s1(b)
use m1
integer,optional::b(:)
  interface
     subroutine s08(a)
      integer,optional::a(2)
     end subroutine
  end interface
  call s01(b)
  call s02(b)
  call s03(b)
  call s04(b)
  call s05(b)
  call s06(b)
  call s08(b)
  call s
  contains
     subroutine s06(a)
      integer,optional::a(2)
      if (present(a)) print *,601
     end subroutine
end
interface
subroutine s1(b)
integer,optional::b(:)
end subroutine
  end interface
integer,pointer ::p(:)=>null()
call s1(p)
print *,'pass'
end
     subroutine s08(a)
      integer,optional::a(2)
      if (present(a)) print *,401
     end subroutine
     subroutine s01(a)
      integer,optional::a(2)
      if (present(a)) print *,101
     end subroutine


   
