module COMPILER

   implicit none

   intrinsic kind
   private kind


   integer, parameter :: NUMBER_OF_INTEGER_KINDS = 4
   integer, parameter :: INTEGER_KINDS (NUMBER_OF_INTEGER_KINDS) = &
                               (/ 1, 2, 4, 8 /)

   integer, parameter :: NUMBER_OF_LOGICAL_KINDS = 2
   integer, parameter :: LOGICAL_KINDS (NUMBER_OF_LOGICAL_KINDS) = &
                               (/ 1, 4 /)

   integer, parameter :: NUMBER_OF_REAL_KINDS = 3
   integer, parameter :: REAL_KINDS (NUMBER_OF_REAL_KINDS) = &
                               (/ 4, 8, 16 /)

   integer, parameter :: NUMBER_OF_CHARACTER_KINDS = 1
   integer, parameter :: CHARACTER_KINDS (NUMBER_OF_CHARACTER_KINDS) = &
                               (/ 1 /)


   integer, parameter :: END_OF_RECORD = -2
   integer, parameter :: END_OF_FILE = -1


   integer, parameter :: DEFAULT_INPUT_UNIT = 5
   integer, parameter :: DEFAULT_OUTPUT_UNIT = 6


   integer, parameter :: NUMBER_OF_PRECONNECTED_UNITS = 3
   integer, parameter :: PRECONNECTED_UNITS (NUMBER_OF_PRECONNECTED_UNITS) = &
                                (/ 0, 5, 6 /)


   integer, parameter :: MAX_UNIT_NUMBER = 99


   integer, parameter :: DEFAULT_INTEGER_KIND = kind (0)
   integer, parameter :: DEFAULT_LOGICAL_KIND = kind (.false.)
   integer, parameter :: DEFAULT_REAL_KIND = kind (0.0)
   integer, parameter :: DP_REAL_KIND = kind (0.0d0)
   integer, parameter :: DEFAULT_CHARACTER_KIND = kind ("A")

   integer :: ANY_UNIT, A_U

contains

   function new_unit ()  result (result)
   
      integer :: result
      logical :: exists, opened
      integer :: ios
   
      do result = 1, max_unit_number
         if (any (result == PRECONNECTED_UNITS)) cycle
         if (result == DEFAULT_INPUT_UNIT .or. &
             result == DEFAULT_OUTPUT_UNIT) cycle
         inquire (unit = result,  &
                  exist = exists,  &
                  opened = opened,  &
                  iostat = ios)
         if (exists .and. .not. opened .and. ios == 0) return
      end do
   
      result = -1
   
   end function new_unit

end module COMPILER
module check_mod

use compiler, only: new_unit

implicit none

private

integer, parameter :: char_length = 200
integer i_o_s
logical :: ok = .true.
character (len=char_length) :: li_ne

integer, public :: star_unit

interface cc
   module procedure cis, cia
   module procedure cls, cla
   module procedure crs, cra, czs, cxs, cds, cda
   module procedure ccs, cca
end interface

interface close
   module procedure close_r, close_d, close_z, close_x
end interface

public ca, cs, cz, cc, cl, cm
public close

integer :: f_dog

contains

subroutine ca
star_unit = new_unit ()
open (star_unit, file="f.out", status="replace")
end subroutine ca

subroutine cs
f_dog = new_unit ()
open (f_dog, file="f.dog", status="replace", iostat=i_o_s)
if (i_o_s /= 0) then
   print*,"Can't open f.dog", i_o_s
   stop
end if
rewind (star_unit)
read (star_unit,"(a)",iostat=i_o_s) li_ne
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
end if
li_ne = deblank(li_ne)
end subroutine cs

subroutine cl
read (star_unit,"(a)",iostat=i_o_s) li_ne
li_ne = deblank(li_ne)
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
end if
end subroutine cl

subroutine cis (ix)
integer ix, ii
if (li_ne == "") call cl
read (li_ne,*,iostat=i_o_s) ii
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
   return
end if
if (ix /= ii) then
   write(f_dog,*) "Integer compare failed."
   write(f_dog,*) "    Expected: ", ix
   write(f_dog,*) "    Computed: ", ii
   ok = .false.
end if
li_ne = next(li_ne)
end subroutine cis

subroutine cm
if (li_ne (1:1) == ",") then
   li_ne = deblank (li_ne (2:))
end if
end subroutine cm

subroutine cia (ix)
integer, dimension (:) :: ix
integer i
do i = 1, size(ix)
call cis(ix(i))
end do
end subroutine cia

subroutine cls (bx)
logical bx, bb
if (li_ne == "") call cl
read (li_ne,*,iostat=i_o_s) bb
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
   return
end if
if (bx .neqv. bb) then
   write(f_dog,*) "Logical compare failed."
   write(f_dog,*) "    Expected: ", bx
   write(f_dog,*) "    Computed: ", bb
   ok = .false.
end if
li_ne = next(li_ne)
end subroutine cls

subroutine cla (bx)
logical, dimension (:) :: bx
integer i
do i = 1, size(bx)
call cls(bx(i))
end do
end subroutine cla

subroutine crs (rx,re)
real rx, rr
real, optional :: re
logical near
if (li_ne == "") call cl
read (li_ne,*,iostat=i_o_s) rr
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
   return
end if
if (present(re)) then
  near = close(rx,rr,re)
else
  near = close(rx,rr)
end if
if (.not. near) then
   write(f_dog,*) "Real compare failed."
   write(f_dog,*) "    Expected: ", rx
   write(f_dog,*) "    Computed: ", rr
   ok = .false.
end if
li_ne = next(li_ne)
end subroutine crs

subroutine cds (rx)
real(kind(0.0d0)) rx, rr
if (li_ne == "") call cl
read (li_ne,*,iostat=i_o_s) rr
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
   return
end if
if (.not. close(rx, rr)) then
   write(f_dog,*) "Real compare failed."
   write(f_dog,*) "    Expected: ", rx
   write(f_dog,*) "    Computed: ", rr
   ok = .false.
end if
li_ne = next(li_ne)
end subroutine cds

subroutine cra (rx,re)
real, dimension (:) :: rx
real, dimension (:), optional :: re
integer i
do i = 1, size(rx)
if (present (re)) then
call crs(rx(i),re(i))
else
call crs(rx(i))
end if
end do
end subroutine cra

subroutine cda (rx)
real(kind(0.0d0)), dimension (:) :: rx
integer i
do i = 1, size(rx)
call cds(rx(i))
end do
end subroutine cda

subroutine czs (zx, re)
complex :: zx, zz
real, optional :: re
logical :: near
if (li_ne == "") call cl
read (li_ne,*,iostat=i_o_s) zz
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
   return
end if
if (present(re)) then
  near = close(zx,zz,re)
else
  near = close(zx,zz)
end if
if (.not. near) then
   write(f_dog,*) "Complex compare failed."
   write(f_dog,*) "    Expected: ", zx
   write(f_dog,*) "    Computed: ", zz
   ok = .false.
end if
li_ne = next(li_ne,z=.true.)
end subroutine czs

subroutine cxs (zx)
complex (kind(0d0)) zx, zz
if (li_ne == "") call cl
read (li_ne,*,iostat=i_o_s) zz
if (i_o_s /= 0) then
   write(f_dog,*) "I/O error attempting to read output."
   write(f_dog,*) "    IOSTAT = ", i_o_s
   write(f_dog,*) trim (li_ne)
   ok = .false.
   return
end if
if (.not. close(zx, zz)) then
   write(f_dog,*) "Complex compare failed."
   write(f_dog,*) "    Expected: ", zx
   write(f_dog,*) "    Computed: ", zz
   ok = .false.
end if
li_ne = next(li_ne,z=.true.)
end subroutine cxs

subroutine ccs (cx)
character (len=*) cx
character (len=len(cx)) dcx
dcx = deblank(cx)
if (li_ne == "") call cl
if (li_ne (:len_trim(dcx)) /= trim(dcx)) then
   write(f_dog,*) "Character compare failed."
   write(f_dog,*) "    Expected: ", trim (dcx)
   write(f_dog,*) "    Computed: ", li_ne (:len_trim(dcx))
   ok = .false.
end if
li_ne = li_ne (1+len(dcx):)
li_ne = deblank(li_ne)
end subroutine ccs

subroutine cca (cx)
character (len=*), dimension (:) :: cx
integer i
do i = 1, size(cx)
call ccs(cx(i))
end do
end subroutine cca

subroutine cz
if (ok) then
   write(f_dog,*) "PASS"
else
   write(f_dog,*) "FAIL"
end if
close (f_dog, status="keep")
close (star_unit, status="keep")
end subroutine cz

function deblank (c)
character (len=char_length) :: deblank
character (len=*) :: c
integer i
i = verify (c, " ,")
if (i == 0) then
   deblank = c
else
   deblank = c (i:)
end if
end function deblank

function next (c,z)
character (len=char_length) :: next
character (len=*), intent (in) :: c
logical, intent (in), optional :: z
integer i
character (len=3) :: delim
if (present(z)) then
   delim = ")))"
else
   delim = " ,/"
end if
i = scan (c, delim)
if (i == 0) then
   next = ""
else if (c(i:i) == "/") then
   next = c(i:)
else
   next = deblank (c (i+1:))
end if
if (present(z)) call cm
end function next

function close_r (x, y, e)
real x, y
real, optional :: e
logical close_r
if (present(e)) then
  close_r = abs (x-y) < e
else
  close_r = abs (x-y) < 100.0*spacing(x)
end if
end function close_r

function close_d (x, y, e)
real (kind(0.0d0)) x, y
real, optional :: e
logical close_d
if (present(e)) then
  close_d = abs (x-y) < e
else
  close_d = abs (x-y) < 100.0*spacing(x)
end if
end function close_d

function close_z (x, y, e)
complex x, y
real, optional :: e
logical close_z
if (present(e)) then
  close_z = abs (x-y) < e
else
  close_z = abs (x-y) < 100.0*spacing(abs(x))
end if
end function close_z

function close_x (x, y)
complex (kind(0d0)) x, y
logical close_x
close_x = abs (x-y) < 100.0*spacing(abs(x))
end function close_x

end module check_mod

module type_mod
integer, parameter :: short = selected_int_kind(1)
type :: rational
   integer :: n, d
end type rational
type :: set
   integer :: cardinality
end type set
end module type_mod

module rational_module
type :: rational
   integer :: n, d
end type rational
end module rational_module

module string_type
type :: string
  character (len=9) :: sss
end type string
end module string_type


module s6_mod
public :: n_rows, n_cols
contains
   PURE FUNCTION N_ROWS(X)
      INTEGER :: N_ROWS
      REAL, INTENT(IN) :: X(:,:)
      N_ROWS = SIZE(X,DIM=1)
   END FUNCTION N_ROWS
 
   PURE FUNCTION N_COLS(X)
      INTEGER :: N_COLS
      REAL, INTENT(IN) :: X(:,:)
      N_COLS = SIZE(X,DIM=2)
   END FUNCTION N_COLS
end module s6_mod

program main
use check_mod
integer, parameter :: single = kind(0.0)

REAL, POINTER :: REAL_PTR

INTERFACE GEN
   SUBROUTINE S1e (J, PI)
      INTEGER J
      INTEGER, POINTER :: PI
   END SUBROUTINE S1e
   SUBROUTINE S2e (K, PR)
      INTEGER K
      REAL, POINTER :: PR
   END SUBROUTINE S2e
END INTERFACE

real, dimension(0:6) :: Aa=(/(i,i=0,6)/)+1

REAL ( SINGLE )  Xx (10, 10, 10)

INTEGER  N
COMMON   N

real, dimension (:,:), pointer :: a5
real, dimension (:,:), allocatable :: a6

integer, dimension(5) :: acalc

 
c=0.1
X = C + 1.0
PI = 3.1416
Z = 3.1 * (PI + X)
if (abs(PI-3.1416)<0.0001)then ;print *,'pass';stop;endif
print*,z
i=3
Aa (I+3) = PI + Aa (I-3)
print*,Aa(i+3)

a=1.1
b=-2.0
c=1.0
z=  A ** (-B) + 3.0 / C - C * (A + B)
print*,z

PRINT *, 2 * A + 2 * B

print*,size(fcn(a))
xx=0.5
print*,size(sin(xx))

call s1
call s2
n=12
call s3
call s4
allocate(a5(4,5))
call s5(a5)
deallocate(a5)
allocate(a6(5,6))
call s6(a6)
deallocate(a6)
call s7
call s8
call s9
call s10
call s11
call s12
call s13
call s14
call s15
call s16
call s17
call s18
call s19
call s20
call s21
call s22
call s23
call s24
iia=13
acalc=0
call calc(iia,acalc)
print*,iia
print*,acalc(2)

call cs
call cc(7); call cl
call cc(.false.); call cl
call cc(13.14896); call cl
call cc(4.1416); call cl
call cc(5.11); call cl
call cc(-1.8); call cl
call cc(150); call cl
call cc(1000); call cl
call cc(kind(0.0)); call cl
call cc(33); call cl
call cc((/10,1/)); call cl
call cc(10); call cl
call cc(55); call cl
call cc(kind("1")); call cl
call cc((/2,11/)); call cl
call cc(10); call cl
call cc(2); call cl
call cc(8); call cl
call cc((/1,2/)); call cl
call cc(-2); call cl
call cc(5); call cl
call cc((/1,7/)); call cl
call cc((/5,9/)); call cl
call cc((/1,1/)); call cl
call cc((/4,11/)); call cl
call cc(12); call cl
call cc(3); call cl
call cc(4); call cl
call cc(20); call cl
call cc(30); call cl
call cc(6); call cl
call cc(60); call cl
call cc(12); call cl
call cc(8); call cl
call cc((/14,1/)); call cl
call cc(.true.); call cl
call cc(6.6); call cl
call cc(1.1); call cl
call cc("2"); call cl
call cc((3.3,4.4)); call cl
call cc("n"); call cl
call cc(2.0); call cl
call cc(3.0); call cl
call cc(-0.2); call cl
call cc(2); call cl
call cc(1.1); call cl
call cc("11234"); call cl
call cc(0.5); call cl
call cc(1.5); call cl
call cc(3.7); call cl
call cc(4.7); call cl
call cc(11); call cl
call cc(20); call cl
call cc(1); call cl
call cc(10); call cl
call cc("mon"); call cl
call cc(.true.); call cl
call cc(.false.); call cl
call cc(.true.); call cl
call cc(3.3); call cl
call cc(4.4); call cl
call cc(1.0); call cl
call cc(0.2); call cl
call cc(9.9); call cl
call cc(9.9); call cl
call cc(0.2); call cl
call cc(95); call cl
call cc(99); call cl
call cc(11); call cl
call cc(4); call cl
call cc((/0,2,3,2,5,2,0,2,3/)); call cl
call cc(2.0); call cl
call cc(2.0); call cl
call cc(0.0); call cl
call cc(30.0); call cl
call cc((/1,2,3/)); call cl
call cc(.true.); call cl
call cc(.true.); call cl
call cc((/1,2,3,4/)); call cl
call cc(12.0); call cl
call cc(6.0); call cl
call cc(2.0/3.0); call cl
call cc(48.0); call cl
call cc(20*6.0); call cl
call cc(.true.); call cl
call cc(0.25); call cl
call cc(1.1); call cl
call cc("a"); call cl
call cc(.false.); call cl
call cc(21.0); call cl
call cc(0.0); call cl
call cc(20); call cl
call cc(9); call cl
call cc(9);call cl
call cc(13);call cl
call cc(2)
call cz

contains
 
REAL FUNCTION FCN (X)
DIMENSION FCN (10, 15)
fcn=2.2+x
end function fcn

subroutine s1
use type_mod
IMPLICIT INTEGER ( SHORT ) (A-F)

INTERFACE OPERATOR (.PLUS.)
TYPE (SET) FUNCTION FCN_SET_PLUS (X, Y)
use type_mod
   TYPE (SET), INTENT (IN) :: X, Y
END FUNCTION FCN_SET_PLUS
TYPE (RATIONAL) FUNCTION FCN_RAT_PLUS (X, Y)
use type_mod
   TYPE (RATIONAL), INTENT(IN) :: X, Y
END FUNCTION FCN_RAT_PLUS
END INTERFACE

integer, parameter :: k1=kind(" "), k2=kind(" ")
character(len=25,kind=k1) :: ca="1234567890123456789012345"
character(len=30,kind=k2),dimension(10)::cb=&
  "123456789012345678901234567890"


INTEGER  A (2:10, 11:12)
TYPE PASSENGER_INFO
   INTEGER NUMBER
   INTEGER TICKET_IDS (2:500)
END TYPE PASSENGER_INFO

TYPE (PASSENGER_INFO) PAL, MANY (3:10)

REAL  C (2:10, 11:12)

interface
  SUBROUTINE  S1a (A)
    REAL  A (:, 2:)
  end subroutine s1a

  SUBROUTINE  S1b (A)
    REAL  A (-2:2, *)
   end subroutine s1b
end interface

type(set) :: as, bs
type(rational) :: cr, dr

print*,kind(FCN (X))

as=set(22)
bs=set(11)
print*, As .PLUS. Bs
cr=rational(1,2)
dr=rational(3,4)
print*, Cr .PLUS. Dr

print*,shape(ca//cb)
print*,len(ca//cb)
print*,kind(ca//cb)
 
print*,LBOUND (A)
print*,UBOUND (A, 1)
print*,LBOUND (PAL % TICKET_IDS)
print*,UBOUND (MANY % TICKET_IDS(2), 1)


CALL  S1a (C (4:8, 11:12) )


CALL  S1b (C (4:8, 11:12) )
end subroutine s1

subroutine s2
REAL, ALLOCATABLE ::  A (:, :)

REAL, POINTER, DIMENSION(:,:) :: X_PTR
REAL, TARGET, DIMENSION(10,20) :: X_TARGET

ALLOCATE  ( A (5, 7:9) )
print*, LBOUND (A)
print*, UBOUND (A)

X_PTR => X_TARGET( 2:8:2, 20:10:-1 )
print*, LBOUND(X_PTR)
print*, UBOUND(X_PTR)
end subroutine s2

subroutine s3
INTEGER  N
COMMON   N
REAL  A (N)
print*,size(a)
end subroutine s3

subroutine s4
INTEGER, DIMENSION (4), PARAMETER :: A = (/ 4, 3, 2, 1 /)
REAL, DIMENSION (A (2)) :: B, C (SIZE (B))
print*,size(b)
print*,size(c)+1
end subroutine s4

SUBROUTINE S5(A)
   REAL :: A(:,:)
   REAL :: WORK(SIZE(A,DIM=1),SIZE(A,DIM=2))
print*,size(work)
END SUBROUTINE S5

SUBROUTINE S6(A)
use s6_mod
   IMPLICIT NONE
   REAL :: A(:,:)
   REAL :: TEMP(N_ROWS(A),N_COLS(A))
   REAL :: TEMP_TRANSPOSE(N_COLS(A),N_ROWS(A))

print*,n_rows(a)*n_cols(a)
print*,n_cols(a)
print*,2*size(temp)
print*,2*size(temp_transpose,dim=1)
end SUBROUTINE S6

subroutine s7
TYPE RATIONAL
  INTEGER N, D
END TYPE
 
TYPE( RATIONAL ), POINTER :: PTR
TYPE( RATIONAL ), TARGET  :: T

t=rational(8,9)
ptr=>t
print*,t%n
end subroutine s7

subroutine s8
use rational_module
INTERFACE OPERATOR (.PLUS.)
 
   FUNCTION RATIONAL_PLUS (L, R)
      USE RATIONAL_MODULE
      TYPE (RATIONAL), INTENT (IN) :: L, R
      TYPE (RATIONAL)              :: RATIONAL_PLUS
   END FUNCTION RATIONAL_PLUS
 
   FUNCTION LOGICAL_PLUS (L, R)
      LOGICAL, INTENT (IN) :: L, R
      LOGICAL              :: LOGICAL_PLUS
   END FUNCTION LOGICAL_PLUS
 
END INTERFACE
print *,rational(2,3) .plus. rational (4,5)
print*, .true. .plus. .false.
end subroutine s8

subroutine s9
INTERFACE OPERATOR (.PLUS.)
   ELEMENTAL FUNCTION ELEM (A, B)
      REAL, INTENT(IN) :: A, B
   END FUNCTION ELEM
   FUNCTION SPEC (A, B)
      REAL, INTENT(IN), DIMENSION(10) :: A, B
      REAL SPEC(10)
   END FUNCTION SPEC
END INTERFACE
REAL X(10), Y(10), Z(10)

x=2.2
y=3.3
Z = X .PLUS. Y

print*,z(2)

end subroutine s9

subroutine s10
use string_type
target x
pointer xptr
character(len=5) :: char
type :: t10
  complex :: c10
end type t10
type (t10) :: student, b_jones=t10((3.3,4.4))

interface assignment (=)
  subroutine string_assign(output,input)
  use string_type
  character(len=*), intent(in) :: input
  type(string), intent(out) :: output
  end subroutine string_assign
end interface

integer, parameter :: n=3

real :: z(9,n), a(9,n), b(9,n)

type :: btype
   real, pointer, dimension(:,:) :: ptr
end type btype

type(btype), dimension(9,n) :: bt
real, dimension(2,2), target :: c = 3.3

character (len=5) :: date = "12345"

type(string) :: stringx

x=0.1
X = X + 1
print*,x

CHAR (1:4) = "A123"
print*,char(3:3)

STUDENT = B_JONES
print*,student

STRINGx = "Brown"
print*,stringx%sss (5:5)

z=9.0
z(2,2) = 0.0
b=18.0
a=3.0
WHERE (Z /= 0.0)
   A = B / Z
END WHERE
print*,a(7,1)
print*,a(2,2)

FORALL (I=1:N, J=1:N)
   A(I,J) = 1.0/(I+J-10)
   Bt(I,J)%PTR => C(I:N,J:N)
END FORALL

print*, a(3,2)
print*, size(bt(2,3)%ptr)


xPTR => X
print*,xptr

DATE (2:5) = DATE (1:4)
print*,date
end subroutine s10

subroutine s11
use rational_module

REAL  R_VALUE, R_ARRAY(10)
TYPE (RATIONAL)  RAT_VALUE, RAT_ARRAY(10)

INTERFACE  ASSIGNMENT (=)
 
   ELEMENTAL SUBROUTINE  RATIONAL_TO_REAL (L, R)
      USE  RATIONAL_MODULE
      TYPE (RATIONAL), INTENT (IN) :: R
      REAL, INTENT(OUT)            :: L
   END SUBROUTINE  RATIONAL_TO_REAL
 
   ELEMENTAL SUBROUTINE  REAL_TO_RATIONAL (L, R)
      USE  RATIONAL_MODULE
      REAL, INTENT(IN)              :: R
      TYPE (RATIONAL), INTENT (OUT) :: L
   END SUBROUTINE  REAL_TO_RATIONAL
 
END INTERFACE

R_VALUE = RATIONAL (1, 2)
print*,r_value
r_array = r_value
print*,r_array(7)+1
RAT_VALUE = 3.7
rat_array=rat_value
print*,real(rat_value%n)/rat_value%d
print*,real(rat_array(4)%n)/rat_array(4)%d+1
end subroutine s11

subroutine s12
INTEGER, TARGET :: T (11:20)
INTEGER, POINTER :: P1 (:), P2 (:)
P1 => T
P2 => T (:)
print*,lbound(p1)
print*,ubound(p1)
print*,lbound(p2)
print*,ubound(p2)
end subroutine s12

subroutine s13
character(len=99), target :: days = "monday"
character(len=30), pointer :: month
logical, target, dimension (4,5) :: x=.true.
logical, pointer, dimension(:) :: ptr
type :: t13
   logical :: socsec = .false.
end type t13
type(t13), target :: jones
logical, pointer :: number
complex, pointer :: head_of_chain

MONTH => DAYS (1:30)
print*, month(:3)
PTR => X (:, 5)
print*,ptr(3)
NUMBER => JONES % SOCSEC
print*,number
HEAD_OF_CHAIN => NULL( )
print*,.not.associated(head_of_chain)
end subroutine s13

subroutine s14
REAL, POINTER :: PTR, P
REAL, TARGET :: A
REAL  B
A = 1.0
P => A
PTR => P
B = PTR + 2.0
print*,b+0.3
end subroutine s14

subroutine s15
INTERFACE
   FUNCTION POINTER_FCN (X)
      REAL  X
      REAL, POINTER :: POINTER_FCN
   END FUNCTION
END INTERFACE
 
REAL, POINTER :: P
REAL  A

a=4.4
P => POINTER_FCN (A)
print*,p
end subroutine s15

subroutine s16
REAL  A(10,10)
real sqrt_a(10,10)
real, dimension(10,10) :: recip_a
integer, dimension(9) :: temperatures
integer, dimension(9) :: hot_temps=99, cold_temps=11

INTEGER :: N(9) = (/1,2,3,4,5,6,7,8,9/)
 
a=0.0
a(5,5)=5.0
WHERE( A /= 0.0 )
    RECIP_A = 1.0 / A
ELSEWHERE
    RECIP_A = 1.0
END WHERE
print*, recip_a(6,6)
print*, recip_a(5,5)

recip_a = 9.9
print*,recip_a(9,9)
WHERE( A /= 0.0 ) RECIP_A = 1.0 / A
print*, recip_a(6,6)
print*, recip_a(5,5)

temperatures=55
temperatures(8:) = 95
temperatures(:3) = 4
WHERE( TEMPERATURES > 90.0 )  HOT_TEMPS = TEMPERATURES
WHERE( TEMPERATURES < 32.0 ) COLD_TEMPS = TEMPERATURES
print*,hot_temps(8)
print*,hot_temps(7)
print*,cold_temps(4)
print*,cold_temps(2)

WHERE ( MOD (N,2) == 0 )
   N = 2
ELSEWHERE ( MOD (N,3) == 0 )
   N = 3
ELSEWHERE ( MOD (N,5) == 0)
   N = 5
ELSEWHERE
   N = 0
ENDWHERE
print*,n

a=-1.1
a(2,3)=4.0
sqrt_a=0.0
WHERE (A>0.0)
   SQRT_A = SQRT(A)
END WHERE
print*,sqrt_a(2,3)
print*,sum(sqrt_a)
end subroutine s16

subroutine s17
REAL A(2,3), B(3,10), C(2,10), D(2,10)
logical, dimension(3), parameter :: c1 = (/.true.,.false.,.false./)
logical, dimension(3), parameter :: c2 = (/.true.,.true.,.false./)
integer, dimension(3) :: i123 = 0

INTRINSIC MATMUL

a=1.0
b=1.0
d=1.0
d(2,:)=-1.0
c=0.0
WHERE (D<0.0)
   C = MATMUL(A,B)
END WHERE
print*,sum(c(1,:))
print*,sum(c(2,:))

WHERE (C1)
i123=1
ELSEWHERE (C2)
i123=2
ELSEWHERE
i123=3
END WHERE
print*,i123
end subroutine s17

subroutine s18
integer, parameter :: m=5, n=4
integer, dimension(n,m) :: a, aa
integer, dimension(n) :: b
DO J = 1, M
   DO I = 1, N
      A(I,J) = I + J
   END DO
END DO
aa=a
A = SPREAD ( (/ (I, I=1,N) /), DIM=2, NCOPIES=M) + &
       SPREAD ( (/ (I, I=1,M) /), DIM=1, NCOPIES=N)
print*,all(a==aa)

FORALL (I=1:N, J=1:M) A(I,J) = I+J
print*,all(a==aa)

b=(/(i,i=1,n)/)
FORALL (I=1:N) A(I,I) = B(I)
print*, (a(i,i),i=1,n)
end subroutine s18

subroutine s19
integer, parameter :: n=4
real, dimension(n,n) :: a, b
a(1::2,:) = 1.0
a(2::2,:) = 2.0
FORALL (I=2:N-1, J=2:N-1)
   A(I,J) = (A(I+1,J) + A(I-1,J) + A(I,J+1)+A(I,J-1))/4.0
   B(I,J) = 1.0/A(I+1,J+1)
END FORALL
print*,sum(a(1::3,:))
print*,sum(a(2:3,2:3))
print*,b(2,2)
end subroutine s19

subroutine s20
integer, parameter :: m=2, n=3
real, dimension(n) :: a=(/(4.0*i,i=1,n)/)
real, dimension(m) :: b=(/(4.0*i,i=1,m)/)
real, dimension(n,m) :: c=0.0
FORALL (I=1:N, J=1:M, A(I)<9.0 .AND. B(J)<9.0) C(I,J) = A(I) + B(J)
print*,sum(c)
end subroutine s20

SUBROUTINE CALC (II, A)
INTEGER, INTENT(IN) :: II
INTEGER A(:)
FORALL (II = 1:SIZE(A))
   A(II) = II
END FORALL
END SUBROUTINE CALC

subroutine s21
real, dimension(10) :: a, b
real, dimension(10,10) :: c
integer, dimension (20) :: index = (/(i, i=20,1,-1)/)
integer, dimension (20) :: a2 = (/(i, i=1,20)/)
integer, dimension (20) :: a1

a=0
b=-1
a(::2) = 2
b(::3) = 3
c=0
FORALL (I=1:10, J=1:10, A(I)/=0.0 .AND. B(J)>0.0)
c(i,j)=6
end forall
print*,sum(c)

FORALL (J=1:20)
   A1(INDEX(J)) = A2(J)
END FORALL
print*,all(a1==index)
end subroutine s21

subroutine s22
REAL A(100,100)

TYPE SCREW
   CHARACTER (30), POINTER :: HEAD_TYPE
   REAL LENGTH, THREAD
END TYPE SCREW
 
TYPE (SCREW) INVENTORY (500)
REAL THREADS (100)
CHARACTER (30), TARGET :: HEAD_TYPES(5)

n=100
FORALL (I=1:N)
   A(I,:) = 1.0 / REAL(I)
end forall

print*, a(4,n)

inventory = screw(null(),0.0,0.0)
head_types = (/"a","b","c","d","e"/)
threads = (/(i,i=1,size(threads))/)
inventory(::100)%length = 1.1
FORALL (I=1:500, INVENTORY(I)%LENGTH > .05)
   INVENTORY(I)%HEAD_TYPE => HEAD_TYPES(MOD(I-1,5)+1)
   INVENTORY(I)%THREAD = THREADS((I-1)/5+1)
END FORALL
print*,inventory(101)%length
print*, inventory(101)%head_type
print*, associated(inventory(102)%head_type)
print*, inventory(101)%thread
print*, inventory(102)%thread
end subroutine s22

subroutine s23
INTEGER A(5,4)
integer b(5,4)
a=reshape( (/0,1,2,1,0, 0,1,2,0,0, 0,1,0,2,0, 0,0,2,3,0 /), (/5,4/) )
b=reshape( (/1,1,2,1,5, 1,1,2,4,5, 1,1,3,2,5, 1,2,2,3,5 /), (/5,4/) )
INT_WHERE: FORALL (I=1:5)
   WHERE (A(I,:) == 0) A(I,:) = I
END FORALL INT_WHERE

print*,count(a==b)
end subroutine s23

subroutine s24
INTEGER A(3,3)
integer b(3,3)
n=3
a=reshape( (/0,1,2,3,4,5,6,7,8/), (/3,3/) )
b=reshape( (/0,1,2,1,4,5,2,5,8/), (/3,3/) )
OUTER: FORALL (I=1:N-1)
   INNER: FORALL (J=I+1:N)
      A(I,J) = A (J,I)
   END FORALL INNER
END FORALL OUTER
print*,count(a==b)


a=reshape( (/0,1,2,3,4,5,6,7,8/), (/3,3/) )
b=reshape( (/0,1,2,1,4,5,2,5,8/), (/3,3/) )

FORALL (I=1:N-1, J=1:N, J>I) A(I,J) = A(J,I)
print*,count(a==b)
end subroutine s24

end program main

SUBROUTINE S1e (J, PI)
use check_mod, only: star_unit
   INTEGER J
   INTEGER, POINTER :: PI
print*, j+1
print*,associated(pi)
END SUBROUTINE S1e

SUBROUTINE S2e (K, PR)
use check_mod, only: star_unit
   INTEGER K
   REAL, POINTER :: PR
print*,k
print*,associated(pr)
END SUBROUTINE S2e

TYPE (SET) FUNCTION FCN_SET_PLUS (X, Y)
use type_mod
   TYPE (SET), INTENT (IN) :: X, Y
fcn_set_plus%cardinality=x%cardinality+y%cardinality
END FUNCTION FCN_SET_PLUS
 
TYPE (RATIONAL) FUNCTION FCN_RAT_PLUS (X, Y)
use type_mod
   TYPE (RATIONAL), INTENT(IN) :: X, Y
fcn_rat_plus%n=x%n+x%d+y%n+y%d
fcn_rat_plus%d=1
END FUNCTION FCN_RAT_PLUS

 
TYPE (RATIONAL) FUNCTION RATIONAL_PLUS (X, Y)
use type_mod
   TYPE (RATIONAL), INTENT(IN) :: X, Y
rational_plus%n=x%n+x%d+y%n+y%d
rational_plus%d=1
END FUNCTION RATIONAL_PLUS
 
LOGICAL FUNCTION LOGICAL_PLUS (X, Y)
   LOGICAL, INTENT(IN) :: X, Y
logical_plus=x.or.y
END FUNCTION LOGICAL_PLUS

ELEMENTAL FUNCTION ELEM (A, B)
   REAL, INTENT(IN) :: A, B
elem=a+b
END FUNCTION ELEM

FUNCTION SPEC (A, B)
   REAL, INTENT(IN), DIMENSION(10) :: A, B
   REAL SPEC(10)
spec=a+b+1.1
END FUNCTION SPEC

ELEMENTAL SUBROUTINE  RATIONAL_TO_REAL (L, R)
   USE  RATIONAL_MODULE
   TYPE (RATIONAL), INTENT (IN) :: R
   REAL, INTENT(OUT)            :: L
if (r%d == 0) then
l=huge(l)
else
l=real(r%n)/r%d
end if
END SUBROUTINE  RATIONAL_TO_REAL
 
ELEMENTAL SUBROUTINE  REAL_TO_RATIONAL (L, R)
   USE  RATIONAL_MODULE
   REAL, INTENT(IN)              :: R
   TYPE (RATIONAL), INTENT (OUT) :: L
l%n = 100*r
l%d = 100
END SUBROUTINE  REAL_TO_RATIONAL

FUNCTION POINTER_FCN (X)
   REAL  X
target x
   REAL, POINTER :: POINTER_FCN
pointer_fcn => x
END FUNCTION

  subroutine string_assign(output,input)
  use string_type
  character(len=*), intent(in) :: input
  type(string), intent(out) :: output
  output%sss = input
  end subroutine string_assign

  SUBROUTINE  S1a (A)
use check_mod, only : star_unit
    REAL  A (:, 2:)
print*, LBOUND (A)
  end subroutine s1a

  SUBROUTINE  S1b (A)
use check_mod, only : star_unit
    REAL  A (-2:2, *)
print*, LBOUND (A, 1)
print*, UBOUND (A ( :, 2))
   end subroutine s1b
