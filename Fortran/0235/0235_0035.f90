module n
type b1
  contains
   procedure,nopass::prc
end type
contains
subroutine prc()
  write(14,*)1
end subroutine
end
module nn
use n
type, extends(b1)::b21
  contains
   procedure,nopass::prc=>cproc21
end type
type, extends(b1)::b22
  contains
   procedure,nopass::prc=>cproc22
end type
contains
subroutine cproc21()
  write(14,*)21
end subroutine
subroutine cproc22()
  write(14,*)22
end subroutine
end
module nnn
use nn
type, extends(b21)::b31
  contains
   procedure,nopass::prc=>cproc31
end type
type, extends(b21)::b32
  contains
   procedure,nopass::prc=>cproc32
end type
type, extends(b21)::b33
  contains
   procedure,nopass::prc=>cproc33
end type
type, extends(b21)::b34
  contains
   procedure,nopass::prc=>cproc34
end type
contains
subroutine cproc31()
  write(14,*)31
end subroutine
subroutine cproc32()
  write(14,*)32
end subroutine
subroutine cproc33()
  write(14,*)33
end subroutine
subroutine cproc34()
  write(14,*)34
end subroutine
end module
subroutine s1
use nnn
type(b1) ::b1v
type(b21)::b21v
type(b22)::b22v
type(b31)::b31v
type(b32)::b32v
type(b33)::b33v
type(b34)::b34v
call b1v%prc()
call b21v%prc()
call b22v%prc()
call b31v%prc()
call b32v%prc()
call b33v%prc()
call b34v%prc()
rewind 14
read(14,*) k
if (k/=1) print *,2001
read(14,*) k
if (k/=21) print *,2021
read(14,*) k
if (k/=22) print *,2022
read(14,*) k
if (k/=31) print *,2021
read(14,*) k
if (k/=32) print *,2022
read(14,*) k
if (k/=33) print *,2033
read(14,*) k
if (k/=34) print *,2034
read(14,*,end=9) k
print *,3000
9 continue
end
call s1
print *,'pass'
end
