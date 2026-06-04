call test01()
call test02()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: i
end type
type ty2
integer(kind=1) ,allocatable:: j01(: )
integer(kind=2) ,allocatable:: j02(: )
integer(kind=4) ,allocatable:: j03(: )
integer(kind=8) ,allocatable:: j04(: )
logical(kind=1) ,allocatable:: j05(: )
logical(kind=2) ,allocatable:: j06(: )
logical(kind=4) ,allocatable:: j07(: )
logical(kind=8) ,allocatable:: j08(: )
real(kind=4 )   ,allocatable:: j09(: )
real(kind=8 )   ,allocatable:: j10(: )
real(kind=16)   ,allocatable:: j11(: )
complex(kind=4 ),allocatable:: j12(: )
complex(kind=8 ),allocatable:: j13(: )
complex(kind=16),allocatable:: j14(: )
character       ,allocatable:: j15(: )
type(ty1)       ,allocatable:: j16(: )
end type
type(ty2) :: s
integer(kind=1) :: i01(1 )
integer(kind=2) :: i02(2 )
integer(kind=4) :: i03(3 )
integer(kind=8) :: i04(4 )
logical(kind=1) :: i05(5 )
logical(kind=2) :: i06(6 )
logical(kind=4) :: i07(7 )
logical(kind=8) :: i08(8 )
real(kind=4 )   :: i09(9 )
real(kind=8 )   :: i10(10)
real(kind=16)   :: i11(11)
complex(kind=4 ):: i12(12)
complex(kind=8 ):: i13(13)
complex(kind=16):: i14(14)
character       :: i15(15)
type(ty1)       :: i16(16)
s = ty2(i01,i02,i03,i04,i05,i06,i07,i08,i09,i10,i11,i12,i13,i14,i15,i16)
if (size(s%j01).ne. 1) print *,'fail'
if (size(s%j02).ne. 2) print *,'fail'
if (size(s%j03).ne. 3) print *,'fail'
if (size(s%j04).ne. 4) print *,'fail'
if (size(s%j05).ne. 5) print *,'fail'
if (size(s%j06).ne. 6) print *,'fail'
if (size(s%j07).ne. 7) print *,'fail'
if (size(s%j08).ne. 8) print *,'fail'
if (size(s%j09).ne. 9) print *,'fail'
if (size(s%j10).ne.10) print *,'fail'
if (size(s%j11).ne.11) print *,'fail'
if (size(s%j12).ne.12) print *,'fail'
if (size(s%j13).ne.13) print *,'fail'
if (size(s%j14).ne.14) print *,'fail'
if (size(s%j15).ne.15) print *,'fail'
if (size(s%j16).ne.16) print *,'fail'
end
subroutine test02()
type ty1
 integer :: i
end type
type ty2
integer(kind=1) ,allocatable:: j01(: )
integer(kind=2) ,allocatable:: j02(: )
integer(kind=4) ,allocatable:: j03(: )
integer(kind=8) ,allocatable:: j04(: )
logical(kind=1) ,allocatable:: j05(: )
logical(kind=2) ,allocatable:: j06(: )
logical(kind=4) ,allocatable:: j07(: )
logical(kind=8) ,allocatable:: j08(: )
real(kind=4 )   ,allocatable:: j09(: )
real(kind=8 )   ,allocatable:: j10(: )
real(kind=16)   ,allocatable:: j11(: )
complex(kind=4 ),allocatable:: j12(: )
complex(kind=8 ),allocatable:: j13(: )
complex(kind=16),allocatable:: j14(: )
character       ,allocatable:: j15(: )
type(ty1)       ,allocatable:: j16(: )
end type
type(ty2) :: s
integer(kind=1) :: i01(1 )=1
integer(kind=2) :: i02(2 )=1
integer(kind=4) :: i03(3 )=1
integer(kind=8) :: i04(4 )=1
logical(kind=1) :: i05(5 )=.true.
logical(kind=2) :: i06(6 )=.true.
logical(kind=4) :: i07(7 )=.true.
logical(kind=8) :: i08(8 )=.true.
real(kind=4 )   :: i09(9 )=1
real(kind=8 )   :: i10(10)=1
real(kind=16)   :: i11(11)=1
complex(kind=4 ):: i12(12)=1
complex(kind=8 ):: i13(13)=1
complex(kind=16):: i14(14)=1
character       :: i15(15)='a'
type(ty1)       :: i16(16)=ty1(1)
s = ty2(i01(:),i02(1:),i03(:3),i04(1:4),i05(::1),i06,i07,.not.i08,+i09,-i10,i11,i12,i13,i14,i15,i16)
if (size(s%j01).ne. 1) print *,'fail'
if (size(s%j02).ne. 2) print *,'fail'
if (size(s%j03).ne. 3) print *,'fail'
if (size(s%j04).ne. 4) print *,'fail'
if (size(s%j05).ne. 5) print *,'fail'
if (size(s%j06).ne. 6) print *,'fail'
if (size(s%j07).ne. 7) print *,'fail'
if (size(s%j08).ne. 8) print *,'fail'
if (size(s%j09).ne. 9) print *,'fail'
if (size(s%j10).ne.10) print *,'fail'
if (size(s%j11).ne.11) print *,'fail'
if (size(s%j12).ne.12) print *,'fail'
if (size(s%j13).ne.13) print *,'fail'
if (size(s%j14).ne.14) print *,'fail'
if (size(s%j15).ne.15) print *,'fail'
if (size(s%j16).ne.16) print *,'fail'
end
