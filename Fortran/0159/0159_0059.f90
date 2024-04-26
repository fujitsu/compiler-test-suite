module mmm
integer,allocatable :: a1
integer,allocatable :: a2(:)
type ty1
integer :: aa
end type
type(ty1),allocatable :: a3
type(ty1),allocatable :: a4(:)
type ty2
type(ty2),pointer     :: bb
integer,allocatable :: aa
end type
type(ty2),pointer     :: a5
type(ty2),pointer     :: a6(:)
end

module mm1
use mmm,only:a1a=>a1
use mmm,only:a2a=>a2
use mmm,only:a3a=>a3
use mmm,only:a4a=>a4
use mmm,only:a5a=>a5
use mmm,only:a6a=>a6
end

module mm2
use mmm,only:a1b=>a1
use mmm,only:a2b=>a2
use mmm,only:a3b=>a3
use mmm,only:a4b=>a4
use mmm,only:a5b=>a5
use mmm,only:a6b=>a6
end

module mod
use mmm
use mm1
use mm2
integer,allocatable :: ba1
integer,allocatable :: ba2(:)
type bty1
integer :: aa
end type
type(bty1),allocatable :: ba3
type(bty1),allocatable :: ba4(:)
type bty2
type(bty2),pointer     :: bb
integer,allocatable :: aa
end type
type(bty2),pointer     :: ba5
type(bty2),pointer     :: ba6(:)
end

subroutine s001()
use mod
allocate(a1)
allocate(a2(10))
allocate(a3)
allocate(a4(10))
allocate(a5)
allocate(a6(10))
allocate(a5%aa)
allocate(a6(1)%aa)
allocate(a5%bb)
allocate(a5%bb%aa)
allocate(a6(1)%bb)
allocate(a6(1)%bb%aa)
allocate(a5%bb%bb)
allocate(a6(1)%bb%bb)
allocate(a5%bb%bb%aa)
allocate(a6(1)%bb%bb%aa)
end
subroutine s00d()
use mod
deallocate(a1)
deallocate(a2)
deallocate(a3)
deallocate(a4)
deallocate(a5%aa)
deallocate(a6(1)%aa)
deallocate(a6(1)%bb%bb%aa)
deallocate(a6(1)%bb%bb)
deallocate(a6(1)%bb%aa)
deallocate(a6(1)%bb)
deallocate(a5%bb%bb%aa)
deallocate(a5%bb%bb)
deallocate(a5%bb%aa)
deallocate(a5%bb)
deallocate(a5)
deallocate(a6)
end
subroutine s002()
use mod
a1a=2
a2a=2
a3a%aa=2
a4a%aa=2
a5a%aa=2
a6a(1)%aa=2
a5a%bb%aa=2
a6a(1)%bb%aa=2
a5a%bb%bb%aa=2
a6a(1)%bb%bb%aa=2
end

subroutine s003()
use mod
a1=3
a2=3
a3%aa=3
a4%aa=3
a5%aa=3
a6(1)%aa=3
a5%bb%aa=3
a6(1)%bb%aa=3
a5%bb%bb%aa=3
a6(1)%bb%bb%aa=3
end

subroutine s002ch()
use mod
if (a1.ne.2) print *,'err01'
if (a2(1).ne.2) print *,'err02'
if (a3%aa.ne.2) print *,'err03'
if (a4(1)%aa.ne.2) print *,'err04'
if (a5%aa.ne.2) print *,'err05'
if (a6(1)%aa.ne.2) print *,'err06'
if (a5%bb%aa.ne.2) print *,'err07'
if (a6(1)%bb%aa.ne.2) print *,'err08'
if (a5%bb%bb%aa.ne.2) print *,'err09'
if (a6(1)%bb%bb%aa.ne.2) print *,'err10'
end
subroutine s00ch(i)
use mod
if (a1.ne.i) print *,'err01'
if (a2(1).ne.i) print *,'err02'
if (a3%aa.ne.i) print *,'err03'
if (a4(1)%aa.ne.i) print *,'err04'
if (a5%aa.ne.i) print *,'err05'
if (a6(1)%aa.ne.i) print *,'err06'
if (a5%bb%aa.ne.i) print *,'err07'
if (a6(1)%bb%aa.ne.i) print *,'err08'
if (a5%bb%bb%aa.ne.i) print *,'err09'
if (a6(1)%bb%bb%aa.ne.i) print *,'err10'
end

use mod
call s001()
call s002()
call s002ch()
call s003()
call s003ch()
a1=4
a2=4
a3%aa=4
a4%aa=4
a5%aa=4
a6(1)%aa=4
a5%bb%aa=4
a6(1)%bb%aa=4
a5%bb%bb%aa=4
a6(1)%bb%bb%aa=4
call s00ch(4)
call s00d()
print *,'pass'
contains
subroutine s003ch()
if (a1.ne.3) print *,'err01'
if (a2(1).ne.3) print *,'err02'
if (a3%aa.ne.3) print *,'err03'
if (a4(1)%aa.ne.3) print *,'err04'
if (a5%aa.ne.3) print *,'err05'
if (a6(1)%aa.ne.3) print *,'err06'
if (a5%bb%aa.ne.3) print *,'err07'
if (a6(1)%bb%aa.ne.3) print *,'err08'
if (a5%bb%bb%aa.ne.3) print *,'err09'
if (a6(1)%bb%bb%aa.ne.3) print *,'err10'
end subroutine
end
