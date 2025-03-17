call test01()
print *,'pass'
end

subroutine test01()
integer(kind=1)  :: a01/1/
integer(kind=2)  :: a02/1/
integer(kind=4)  :: a03/1/
integer(kind=8)  :: a04/1/
logical(kind=1)  :: a05/.false./
logical(kind=2)  :: a06/.false./
logical(kind=4)  :: a07/.false./
logical(kind=8)  :: a08/.false./
real(kind=4)     :: a09/1/
real(kind=8)     :: a10/1/
real(kind=16)    :: a11/1/
complex(kind=4)  :: a12/1/
complex(kind=8)  :: a13/1/
complex(kind=16) :: a14/1/
character(10)    :: a15/'a'/
type ty1
 sequence
 integer ii
end type
type(ty1)        :: a16/ty1(1)/
if (sizeof((/a01/)) .ne.1  ) print *,"fail"
if (sizeof((/a02/)) .ne.2  ) print *,"fail"
if (sizeof((/a03/)) .ne.4  ) print *,"fail"
if (sizeof((/a04/)) .ne.8  ) print *,"fail"
if (sizeof((/a05/)) .ne.1  ) print *,"fail"
if (sizeof((/a06/)) .ne.2  ) print *,"fail"
if (sizeof((/a07/)) .ne.4  ) print *,"fail"
if (sizeof((/a08/)) .ne.8  ) print *,"fail"
if (sizeof((/a09/)) .ne.4  ) print *,"fail"
if (sizeof((/a10/)) .ne.8  ) print *,"fail"
if (sizeof((/a11/)) .ne.16 ) print *,"fail"
if (sizeof((/a12/)) .ne.8  ) print *,"fail"
if (sizeof((/a13/)) .ne.16 ) print *,"fail"
if (sizeof((/a14/)) .ne.32 ) print *,"fail"
if (sizeof((/a15/)) .ne.10 ) print *,"fail"
if (sizeof((/a16/)) .ne.4  ) print *,"fail"
end
