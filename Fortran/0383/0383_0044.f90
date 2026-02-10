subroutine sub(a,b,c,d,e,f,g,h)
real,pointer,external:: a
pointer      :: b
external     :: b
external     :: c
pointer      :: c
real,pointer :: d
external     :: d
real,external:: e
pointer      :: e
pointer      :: f
real,external:: f
external     :: g
real,pointer :: g
procedure()  :: h
pointer      :: h
if ( 1.0 .ne. a()) print *,'fail'
if ( 1.0 .ne. b()) print *,'fail'
if ( 1.0 .ne. c()) print *,'fail'
if ( 1.0 .ne. d()) print *,'fail'
if ( 1.0 .ne. e()) print *,'fail'
if ( 1.0 .ne. f()) print *,'fail'
if ( 1.0 .ne. g()) print *,'fail'
if ( 1.0 .ne. h()) print *,'fail'
end subroutine
module mod
real,pointer,external:: a
pointer      :: b
external     :: b
real::b
external     :: c
pointer      :: c
real::c
real,pointer :: d
external     :: d
real,external:: e
pointer      :: e
pointer      :: f
real,external:: f
external     :: g
real,pointer :: g
procedure(real)  :: h
pointer      :: h
end module
use mod
interface
subroutine sub(a,b,c,d,e,f,g,h)
real,pointer,external:: a
pointer      :: b
external     :: b
external     :: c
pointer      :: c
real,pointer :: d
external     :: d
real,external:: e
pointer      :: e
pointer      :: f
real,external:: f
external     :: g
real,pointer :: g
procedure()  :: h
pointer      :: h
end subroutine
end interface
procedure(real) :: fff
a=>fff
b=>fff
c=>fff
d=>fff
e=>fff
f=>fff
g=>fff
h=>fff
if ( 1.0 .ne. a()) print *,'fail'
if ( 1.0 .ne. b()) print *,'fail'
if ( 1.0 .ne. c()) print *,'fail'
if ( 1.0 .ne. d()) print *,'fail'
if ( 1.0 .ne. e()) print *,'fail'
if ( 1.0 .ne. f()) print *,'fail'
if ( 1.0 .ne. g()) print *,'fail'
if ( 1.0 .ne. h()) print *,'fail'
call sub(a,b,c,d,e,f,g,h)
print *,'pass '
end
real function fff()
  fff = 1.0
end function
