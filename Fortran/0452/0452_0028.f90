module m1
integer(8),parameter::n=4
  type r
    integer(8)::d
  end  type
  type,extends(r):: rr
    integer(8)::dd
  end type
  type,extends(rr):: rrr
    integer(8)::ddd
  end type
  type y
    integer(8),allocatable::dummy(:)
  end  type
  type z
    integer::x0=0
    class(rr),allocatable::x1(:)
  end type
  type x
    type(y)::y1
    type(z)::z1
  end type
contains
   elemental impure subroutine s0(xx)
   type(x),intent(out)::xx
    call s1(xx%z1)
   end subroutine
   impure elemental subroutine s1(a)
   type(z),intent(out)::a
   k=0
   select type(p=>a%x1)
     type is(rr)
      k=1
   end select
   if (k/=1) print *,711
   allocate ( rrr:: a%x1(n),stat=k)
   if (k/=0) stop 1000
   write(76,'(z16.16)') loc(a%x1)
   select type(p=>a%x1)
     type is(rrr)
      k=1
   end select
   if (k/=1) print *,701
  end subroutine
end
use m1
   type(x)::a(3)
do nn=1,10000
  call s0(a)
end do
call chk
print *,'pass'
end
subroutine chk
character(16):: c,cc(100)
k=0
rewind 76
do nn=1,10000*3
 read(76,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>10000) then
    print *,'Eroor memory leak '
    return
 endif
 cc(k)=c
2 continue
end do
end
