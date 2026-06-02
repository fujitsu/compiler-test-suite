module mod1
  type t1
     integer::a
   contains
     final::f0
  end type t1

  type base
  end type base
  type,extends(base) :: mty
     type(t1),allocatable::jj
     type(t1)::kk
   contains
     final::f1
  end type

  type,extends(mty ) :: ty
     integer :: ii
  end type ty

contains
  subroutine f0(e)
    type(t1)::e
    write(13,*)'f0',e%a
  end subroutine f0
  subroutine f1(e)
    type(mty )::e
    write(13,*)'f1',e%jj%a
  end subroutine f1
end module mod1

use mod1
class(base),allocatable :: calc(:,:)      !!!!!!!!!! Unlimited polymorphic object
allocate(ty::calc(2,2))       !!!!!!!! Dynamic type ty
select type(calc)
type is(ty)
allocate(calc(1,1)%jj)
allocate(calc(2,1)%jj)
allocate(calc(1,2)%jj)
allocate(calc(2,2)%jj)
calc(1,1)%jj%a=1
calc(2,1)%jj%a=2
calc(1,2)%jj%a=3
calc(2,2)%jj%a=4
calc%ii=10
calc%kk%a=5
if (any(calc%ii/=10)) print *,2872
end select
deallocate(calc)      !!!!!!!!!!!!!!!!
call chk
print *,'sngg234p : pass'
end
subroutine chk
character(10) r
rewind 13
read(13,'(a)') r
if (index(r,'f0 1')==0) print *,2929,r
read(13,'(a)') r
if (index(r,'f0 2')==0) print *,2929
read(13,'(a)') r
if (index(r,'f0 3')==0) print *,2929
read(13,'(a)') r
if (index(r,'f0 4')==0) print *,2929
read(13,'(a)') r
if (index(r,'f0 5')==0) print *,2929
end
