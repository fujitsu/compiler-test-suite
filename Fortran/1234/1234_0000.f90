module m1
  type t00
     integer::t0v1
  end type
  type t01
    character(:),allocatable:: t1v1(:)
    integer     ,allocatable:: t1v2(:)
    type(t00)   ,allocatable:: t1v3(:)
    real(8)     ,allocatable:: t1v4(:)
    real(8)     ,allocatable:: t1v5(:)
    character(:),allocatable:: t1v6(:)
  end type
  type t02
    type(t01)   ,allocatable:: t2v1
  end type
  type t03
    real(8)     ,allocatable:: t3v1(:)
    real(8)     ,allocatable:: t3v2(:)
    real(8)     ,allocatable:: t3v3(:)
  end type
  type t04
    real(8)     ,allocatable:: t4v1(:)
    real(8)     ,allocatable:: t4v2(:)
  end type
  type t05
    real(8)     ,allocatable:: t5v1(:)
    real(8)     ,allocatable:: t5v2(:)
  end type
  type t11
    character(:),allocatable:: t11v1(:)
    integer     ,allocatable:: t11v2(:)
    type(t00)   ,allocatable:: t11v3(:)
    real(8)     ,allocatable:: t11v4(:)
    real(8)     ,allocatable:: t11v5(:)
    character(:),allocatable:: t11v6(:)
  end type
  type t12
    type(t11)   ,allocatable:: t12v1
  end type
  type t13
    real(8)     ,allocatable:: t13v1(:)
    real(8)     ,allocatable:: t13v2(:)
    real(8)     ,allocatable:: t13v3(:)
  end type
  type t14
    real(8)     ,allocatable:: t14v1(:)
    real(8)     ,allocatable:: t14v2(:)
  end type
  type t15
    real(8)     ,allocatable:: t15v1(:)
    real(8)     ,allocatable:: t15v2(:)
  end type
  type t21
    character(:),allocatable:: t21v1(:)
    integer     ,allocatable:: t21v2(:)
    type(t00)   ,allocatable:: t21v3(:)
    real(8)     ,allocatable:: t21v4(:)
    real(8)     ,allocatable:: t21v5(:)
    character(:),allocatable:: t21v6(:)
  end type
  type t22
    type(t21)   ,allocatable:: t22v1
  end type
  type t23
    real(8)     ,allocatable:: t23v1(:)
    real(8)     ,allocatable:: t23v2(:)
    real(8)     ,allocatable:: t23v3(:)
  end type
  type t24
    real(8)     ,allocatable:: t24v1(:)
    real(8)     ,allocatable:: t24v2(:)
  end type
  type t25
    real(8)     ,allocatable:: t25v1(:)
    real(8)     ,allocatable:: t25v2(:)
  end type
  type tt
     type(t01),allocatable:: r01
     type(t02),allocatable:: r02
     type(t03),allocatable:: r03
     type(t04),allocatable:: r04
     type(t05),allocatable:: r05
     type(t11),allocatable:: r11
     type(t12),allocatable:: r12
     type(t13),allocatable:: r13
     type(t14),allocatable:: r14
     type(t15),allocatable:: r15
     type(t21),allocatable:: r21
     type(t22),allocatable:: r22
     type(t23),allocatable:: r23
     type(t24),allocatable:: r24
     type(t25),allocatable:: r25
     type(t01),allocatable:: r3a
     type(t01),allocatable:: r31
     type(t02),allocatable:: r32
     type(t03),allocatable:: r33
     type(t04),allocatable:: r34
     type(t05),allocatable:: r35
     type(t11),allocatable:: r36
     type(t12),allocatable:: r37
     type(t13),allocatable:: r38
     type(t14),allocatable:: r39
     type(t15),allocatable:: r4a
  end type
contains
   subroutine ss(d)
    class(tt)::d
      allocate(d%r01)
      deallocate(d%r01)
  end
   subroutine s01
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s02
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s03
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s04
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s05
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s06
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s07
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s08
    type(tt):: v
    call ss(v)
    call ss(v)
  end
   subroutine s09
    type(tt):: v
    call ss(v)
    call ss(v)
  end
end
use m1
call s01
print *,'sngg645t : pass'
end
  
