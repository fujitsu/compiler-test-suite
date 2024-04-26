module m1
contains
  subroutine mpi8(i8)
   integer(8)::i8
   real(4)::r4
   i8=4
   return
   entry mpr4(r4)
   r4=5
  end subroutine
end 
module m2
use m1
contains
subroutine s1(dp,prc1)
interface 
  subroutine dp(i1)
   integer(1)::i1
  end subroutine
  subroutine i2p(i2)
   integer(2)::i2
  end subroutine
  subroutine i4p(i4)
   integer(4)::i4
  end subroutine
  subroutine epr8(r8)
   real(8)::r8
  end subroutine
end interface
procedure(i2p),pointer:: prc1
procedure(i4p),pointer:: prc2
 interface gen
   procedure  dp,prc1,prc2,mpi8,mpr4,epr8
 end interface
integer(1)::n1
integer(2)::n2
integer(4)::n4
integer(8)::n8
real(4)::w4
real(8)::w8
prc2=>i4p
 call gen(n1)
if (n1/=1)print *,101
 call gen(n2)
if (n2/=2)print *,102
 call gen(n4)
if (n4/=3)print *,103
 call gen(n8)
if (n8/=4)print *,104
 call gen(w4)
if (w4/=5)print *,105
 call gen(w8)
if (w8/=6)print *,106
end subroutine
end
use m2
interface 
  subroutine dp(i1)
   integer(1)::i1
  end subroutine
  subroutine i2p(i2)
   integer(2)::i2
  end subroutine
 end interface
procedure(i2p),pointer:: prc1
prc1=>i2p
call s1(dp,prc1)
print *,'pass'
end

  subroutine epr8(r8)
   real(8)::r8
   r8=6
  end subroutine
  subroutine dp(i1)
   integer(1)::i1
   i1=1
  end subroutine
  subroutine i2p(i2)
   integer(2)::i2
   i2=2
  end subroutine
  subroutine i4p(i4)
   integer(4)::i4
   i4=3
  end subroutine
