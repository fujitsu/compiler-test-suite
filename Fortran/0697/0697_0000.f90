call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
integer(kind=1)  :: a01
integer(kind=2)  :: a02
integer(kind=4)  :: a03
integer(kind=8)  :: a04
logical(kind=1)  :: a05
logical(kind=2)  :: a06
logical(kind=4)  :: a07
logical(kind=8)  :: a08
real(kind=4)     :: a09
real(kind=8)     :: a10
real(kind=16)    :: a11
complex(kind=4)  :: a12
complex(kind=8)  :: a13
complex(kind=16) :: a14
character(10)    :: a15
type ty1
 sequence
 integer ii
end type
type(ty1)        :: a16
if (sizeof(a01) .ne.1  ) print *,"fail"
if (sizeof(a02) .ne.2  ) print *,"fail"
if (sizeof(a03) .ne.4  ) print *,"fail"
if (sizeof(a04) .ne.8  ) print *,"fail"
if (sizeof(a05) .ne.1  ) print *,"fail"
if (sizeof(a06) .ne.2  ) print *,"fail"
if (sizeof(a07) .ne.4  ) print *,"fail"
if (sizeof(a08) .ne.8  ) print *,"fail"
if (sizeof(a09) .ne.4  ) print *,"fail"
if (sizeof(a10) .ne.8  ) print *,"fail"
if (sizeof(a11) .ne.16 ) print *,"fail"
if (sizeof(a12) .ne.8  ) print *,"fail"
if (sizeof(a13) .ne.16 ) print *,"fail"
if (sizeof(a14) .ne.32 ) print *,"fail"
if (sizeof(a15) .ne.10 ) print *,"fail"
if (sizeof(a16) .ne.4  ) print *,"fail"
end

subroutine test02()
integer(kind=1)  :: a01(1)
integer(kind=2)  :: a02(1)
integer(kind=4)  :: a03(1)
integer(kind=8)  :: a04(1)
logical(kind=1)  :: a05(1)
logical(kind=2)  :: a06(1)
logical(kind=4)  :: a07(1)
logical(kind=8)  :: a08(1)
real(kind=4)     :: a09(1)
real(kind=8)     :: a10(1)
real(kind=16)    :: a11(1)
complex(kind=4)  :: a12(1)
complex(kind=8)  :: a13(1)
complex(kind=16) :: a14(1)
character(10)    :: a15(1)
type ty1
 sequence
 integer ii
end type
type(ty1)        :: a16(1)
if (sizeof(a01) .ne.1  ) print *,"fail"
if (sizeof(a02) .ne.2  ) print *,"fail"
if (sizeof(a03) .ne.4  ) print *,"fail"
if (sizeof(a04) .ne.8  ) print *,"fail"
if (sizeof(a05) .ne.1  ) print *,"fail"
if (sizeof(a06) .ne.2  ) print *,"fail"
if (sizeof(a07) .ne.4  ) print *,"fail"
if (sizeof(a08) .ne.8  ) print *,"fail"
if (sizeof(a09) .ne.4  ) print *,"fail"
if (sizeof(a10) .ne.8  ) print *,"fail"
if (sizeof(a11) .ne.16 ) print *,"fail"
if (sizeof(a12) .ne.8  ) print *,"fail"
if (sizeof(a13) .ne.16 ) print *,"fail"
if (sizeof(a14) .ne.32 ) print *,"fail"
if (sizeof(a15) .ne.10 ) print *,"fail"
if (sizeof(a16) .ne.4  ) print *,"fail"
end

subroutine test03()
integer(kind=1)  :: a01(2)
integer(kind=2)  :: a02(2)
integer(kind=4)  :: a03(2)
integer(kind=8)  :: a04(2)
logical(kind=1)  :: a05(2)
logical(kind=2)  :: a06(2)
logical(kind=4)  :: a07(2)
logical(kind=8)  :: a08(2)
real(kind=4)     :: a09(2)
real(kind=8)     :: a10(2)
real(kind=16)    :: a11(2)
complex(kind=4)  :: a12(2)
complex(kind=8)  :: a13(2)
complex(kind=16) :: a14(2)
character(10)    :: a15(2)
type ty1
 sequence
 integer ii
end type
type(ty1)        :: a16(2)
if (sizeof(a01) .ne.1  *2) print *,"fail"
if (sizeof(a02) .ne.2  *2) print *,"fail"
if (sizeof(a03) .ne.4  *2) print *,"fail"
if (sizeof(a04) .ne.8  *2) print *,"fail"
if (sizeof(a05) .ne.1  *2) print *,"fail"
if (sizeof(a06) .ne.2  *2) print *,"fail"
if (sizeof(a07) .ne.4  *2) print *,"fail"
if (sizeof(a08) .ne.8  *2) print *,"fail"
if (sizeof(a09) .ne.4  *2) print *,"fail"
if (sizeof(a10) .ne.8  *2) print *,"fail"
if (sizeof(a11) .ne.16 *2) print *,"fail"
if (sizeof(a12) .ne.8  *2) print *,"fail"
if (sizeof(a13) .ne.16 *2) print *,"fail"
if (sizeof(a14) .ne.32 *2) print *,"fail"
if (sizeof(a15) .ne.10 *2) print *,"fail"
if (sizeof(a16) .ne.4  *2) print *,"fail"
end
