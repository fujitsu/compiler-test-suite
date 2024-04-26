module m 
type b1 
  type(b1),pointer::pb1
  contains
   procedure,nopass::prc  
end type
contains
subroutine prc()
  write(12,*)1
end subroutine
end
module mm
use m
type, extends(b1)::b21    
  type(b1),pointer::ppb211
  type(b21),pointer::ppb212
  contains
   procedure,nopass::prc=>cproc21
end type
type, extends(b1)::b22 
  type(b1),pointer::ppb221
  type(b21),pointer::ppb222
  type(b22),pointer::ppb223
  contains
   procedure,nopass::prc=>cproc22
end type
contains
subroutine cproc21()
  write(12,*)21
end subroutine
subroutine cproc22()
  write(12,*)22
end subroutine
end
module mmm
use mm
type, extends(b21)::b31
  type(b1),pointer::ppb311
  type(b21),pointer::ppb312
  type(b22),pointer::ppb313
  type(b31),pointer::ppb314
  type(b32),pointer::ppb315
  type(b33),pointer::ppb316
  type(b34),pointer::ppb317
  contains
   procedure,nopass::prc=>cproc31
end type
type, extends(b21)::b32
  type(b1),pointer::ppb321
  type(b21),pointer::ppb322
  type(b22),pointer::ppb323
  type(b32),pointer::ppb314
  type(b32),pointer::ppb325
  type(b33),pointer::ppb326
  type(b34),pointer::ppb327
  contains
   procedure,nopass::prc=>cproc32
end type
type, extends(b21)::b33
  type(b1),pointer::ppb331
  type(b21),pointer::ppb332
  type(b22),pointer::ppb333
  type(b33),pointer::ppb314
  type(b33),pointer::ppb325
  type(b33),pointer::ppb336
  type(b34),pointer::ppb337
  contains
   procedure,nopass::prc=>cproc33
end type
type, extends(b21)::b34
  type(b1),pointer::ppb341
  type(b21),pointer::ppb342
  type(b22),pointer::ppb343
  type(b34),pointer::ppb314
  type(b34),pointer::ppb325
  type(b34),pointer::ppb336
  type(b34),pointer::ppb347
  contains
   procedure,nopass::prc=>cproc34
end type
contains
subroutine cproc31()
  write(12,*)31
end subroutine
subroutine cproc32()
  write(12,*)32
end subroutine
subroutine cproc33()
  write(12,*)33
end subroutine
subroutine cproc34()
  write(12,*)34
end subroutine
end module
module n 
type b1 
  type(b1),pointer::pb1
  contains
   procedure,nopass::prc  
end type
contains
subroutine prc()
  write(11,*)1
end subroutine
end
module nn
use n
type, extends(b1)::b21    
  type(b1),pointer::ppb211
  type(b21),pointer::ppb212
  contains
   procedure,nopass::prc=>cproc21
end type
type, extends(b1)::b22 
  type(b1),pointer::ppb221
  type(b21),pointer::ppb222
  type(b22),pointer::ppb223
  contains
   procedure,nopass::prc=>cproc22
end type
contains
subroutine cproc21()
  write(11,*)21
end subroutine
subroutine cproc22()
  write(11,*)22
end subroutine
end
module nnn
use nn
type, extends(b21)::b31
  type(b1),pointer::ppb311
  type(b21),pointer::ppb312
  type(b22),pointer::ppb313
  type(b31),pointer::ppb314
  type(b32),pointer::ppb315
  type(b33),pointer::ppb316
  type(b34),pointer::ppb317
  contains
   procedure,nopass::prc=>cproc31
end type
type, extends(b21)::b32
  type(b1),pointer::ppb321
  type(b21),pointer::ppb322
  type(b22),pointer::ppb323
  type(b32),pointer::ppb314
  type(b32),pointer::ppb325
  type(b33),pointer::ppb326
  type(b34),pointer::ppb327
  contains
   procedure,nopass::prc=>cproc32
end type
type, extends(b21)::b33
  type(b1),pointer::ppb331
  type(b21),pointer::ppb332
  type(b22),pointer::ppb333
  type(b33),pointer::ppb314
  type(b33),pointer::ppb325
  type(b33),pointer::ppb336
  type(b34),pointer::ppb337
  contains
   procedure,nopass::prc=>cproc33
end type
type, extends(b21)::b34
  type(b1),pointer::ppb341
  type(b21),pointer::ppb342
  type(b22),pointer::ppb343
  type(b34),pointer::ppb314
  type(b34),pointer::ppb325
  type(b34),pointer::ppb336
  type(b34),pointer::ppb347
  contains
   procedure,nopass::prc=>cproc34
end type
private::b1
contains
subroutine cproc31()
  write(11,*)31
end subroutine
subroutine cproc32()
  write(11,*)32
end subroutine
subroutine cproc33()
  write(11,*)33
end subroutine
subroutine cproc34()
  write(11,*)34
end subroutine
end module
subroutine s1
use mmm,only:b1
use nnn,only:b21,b22,b31,b32,b33,b34
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
rewind 11
read(11,*) k
if (k/=21) print *,2021
read(11,*) k
if (k/=22) print *,2022
read(11,*) k
if (k/=31) print *,2021
read(11,*) k
if (k/=32) print *,2022
read(11,*) k
if (k/=33) print *,2033
read(11,*) k
if (k/=34) print *,2034
read(11,*,end=9) k
print *,3000
9 continue
rewind 12
read(12,*) k
if (k/=1) print *,2101
read(12,*,end=19) k
print *,4000
19 continue
end
call s1
print *,'pass'
end
