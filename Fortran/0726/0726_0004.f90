type ty01
 sequence
 integer(kind=1)    :: a01
 integer(kind=2)    :: a02
 integer(kind=4)    :: a03
 integer(kind=8)    :: a04
 real(kind=4)       :: a05
 real(kind=8)       :: a06
 real(kind=16)      :: a07
 complex(kind=4)    :: a08
 complex(kind=8)    :: a09
 complex(kind=16)   :: a00
end type
type (ty01) ::str
call test01(str)
print *,'pass'
end

subroutine test01(str)
type ty01
 sequence
 integer(kind=1)    :: a01 =5_1
 integer(kind=2)    :: a02 =5_1
 integer(kind=4)    :: a03 =5_1
 integer(kind=8)    :: a04 =5_1
 real(kind=4)       :: a05 =5_1
 real(kind=8)       :: a06 =5_1
 real(kind=16)      :: a07 =5_1
 complex(kind=4)    :: a08 =5_1
 complex(kind=8)    :: a09 =5_1
 complex(kind=16)   :: a00 =5_1
end type
type (ty01) ::str
intent(out) ::str
if (str%a01.ne.5_1) write(6,*) "NG"
call sub(str)
contains
subroutine sub(sss)
type (ty01) ::sss
if (sss%a01.ne.5_1) write(6,*) "NG"
if (sss%a02.ne.5_2) write(6,*) "NG"
if (sss%a03.ne.5_4) write(6,*) "NG"
if (sss%a04.ne.5_8) write(6,*) "NG"
if (sss%a05.ne.5.0_4) write(6,*) "NG"
if (sss%a06.ne.5.0_8) write(6,*) "NG"
if (sss%a07.ne.5.0_16) write(6,*) "NG"
if (sss%a08.ne.(5.0_4,0.0_4)) write(6,*) "NG"
if (sss%a09.ne.(5.0_8,0.0_8)) write(6,*) "NG"
if (sss%a00.ne.(5.0_16,0.0_16)) write(6,*) "NG"
end subroutine
end 

blockdata ssss
common /com/ i
data i/1/
end
subroutine errtra
common /com/ i
if (i.eq.1) then
print *,'ng'
i=2
endif
end
