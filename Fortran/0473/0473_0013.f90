module m
implicit none
 type x
   integer::x1=2
 end type
 type y
   integer::x1=3
 end type
 interface gen3
  module subroutine sub(i,xv,k)
  integer::i,k
  type(x)::xv
  end subroutine
  module subroutine sub2(i,k)
  integer::i,k
  end subroutine
 module subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(y), intent(in) :: dtv
    integer(kind=4), intent(in) :: unit
    character(*), intent(in) :: iotype
    integer, intent(in) :: vlist(:)
    integer, intent(out) :: iostat
    character(*), intent(inout) :: iomsg
  end 
  module subroutine sub3(kk,k1) 
   type(x),intent(in)::k1
   integer,intent(out)::kk
  end
 end interface
 interface gen4
  module function f2(k1,k2) result(r)
   type(x),intent(in)::k1
   type(y),intent(in)::k2
   integer::r
  end
  module function f1(k1) result(r)
   type(x),intent(in)::k1
   integer::r
  end
 end interface
 interface  write(formatted)
     procedure :: wform
  end interface
 interface gen
  procedure    sub2
 end interface
 interface gen2
  procedure    f1,f2
 end interface
 interface assignment(=)
  procedure    sub3
 end interface
 interface operator(.op.)
  procedure    f2
 end interface
end
submodule (m) xx
 implicit none
contains
 module subroutine sub(i,xv,k)
  integer::i,kk,k
  type(x)::xv
  type(y)::yv
integer::ios=0
character(100)::iom=''
  if (i /=1) print *,101
if (k/=1) print *,801
call sub2(i,i+1)
call gen (i,i+1)
if (f1(xv)/=2) print *,201
if (gen2(xv)/=2) print *,202
call sub3(kk,xv)
if (kk      /=2) print *,203
kk=0
kk=xv
if (kk      /=2) print *,204
if (f2(xv,yv)/=5) print *,205
if (gen2(xv,yv)/=5) print *,206
if ((xv.op.yv)/=5) print *,207
write(100,*) yv
call wform(yv,unit=101,iotype='formated',vlist=[1],iostat=ios,iomsg=iom)
 end subroutine
 module subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(y), intent(in) :: dtv
    integer(kind=4), intent(in) :: unit
    character(*), intent(in) :: iotype
    integer, intent(in) :: vlist(:)
    integer, intent(out) :: iostat
    character(*), intent(inout) :: iomsg

    write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x1+1
  end subroutine wform
  module subroutine sub2(i,k)
  integer::i,k
  if (i /=1) print *,102
  if (k /=2) print *,103
  end subroutine
  module function f1(k1) result(r)
   type(x),intent(in)::k1
   integer::r
   r=k1%x1
  end
  module subroutine sub3(kk,k1) 
   type(x),intent(in)::k1
   integer,intent(out)::kk
   kk=k1%x1
  end
  module function f2(k1,k2) result(r)
   type(x),intent(in)::k1
   type(y),intent(in)::k2
   integer::r
   r=k1%x1+k2%x1
  end
end

use m
 implicit none
integer::kk
  type(x)::xv
call sub(1,xv,1)
rewind 100
read(100,*) kk
if (kk/=4) print *,304
rewind 101
read(101,*) kk
if (kk/=4) print *,305
print *,'pass'
end
