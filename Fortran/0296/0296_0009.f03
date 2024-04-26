use, intrinsic :: iso_fortran_env
class(*),allocatable::i1
class(*),allocatable::i2
class(*),allocatable::i4
class(*),allocatable::i8
class(*),allocatable::r
class(*),allocatable::d
class(*),allocatable::q
class(*),allocatable::c
class(*),allocatable::dc
class(*),allocatable::l1
class(*),allocatable::chv
allocate(i1,source=1_1)
allocate(i2,source=1_2)
allocate(i4,source=1_4)
allocate(i8,source=1_8)
allocate(r,source=1.0)
allocate(d,source=1.0_8)
allocate(q,source=1.0_16)
allocate(c,source=(1.0,0.0))
allocate(dc,source=(1.0_8,0.0_8))
allocate(l1,source=.true._1)
allocate(chv,source=compiler_version())
call sss(i1)
call sss(i2)
call sss(i4)
call sss(i8)
call sss(r)
call sss(d)
call sss(q)
call sss(c)
call sss(dc)
call sss(l1)
call sss(chv)
print *,'pass'
contains
subroutine sss(i)
use, intrinsic :: iso_fortran_env
use iso_c_binding
class(*),allocatable,intent(in)::i
select type(i)
type is(integer(kind=1**1))
if(c_sizeof(i)/=sizeof(i)) call err(1)
type is(integer(int(z'2')))
if(c_sizeof(i)/=sizeof(i)) call err(2)
type is(integer(4_1))
if(c_sizeof(i)/=sizeof(i)) call err(3)
type is(integer(8))
if(c_sizeof(i)/=sizeof(i)) call err(4)
type is(real(kind=4))
if(c_sizeof(i)/=sizeof(i)) call err(5)
type is(real(kind=8))
if(c_sizeof(i)/=sizeof(i)) call err(6)
type is(real(kind=16))
if(sizeof(i)/=16) call err(7)
type is(complex)
if(c_sizeof(i)/=sizeof(i)) call err(8)
type is(complex(8))
if(c_sizeof(i)/=sizeof(i)) call err(9)
type is(logical(1))
if(c_sizeof(i)/=sizeof(i)) call err(10)
type is(character(len=*,kind=1))
if(c_sizeof(i)/=sizeof(i)) call err(11)
class default
print *,'err'
end select
end subroutine
end
subroutine err(i)
print *,'err',i
end
