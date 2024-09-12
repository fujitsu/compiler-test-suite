module m1
integer(8),parameter::n=4
  type r
    integer(8)::d
  end  type
  type z
    integer::x0=0
    class(r),allocatable::x1(:)
  end type
contains
   subroutine s1(a)
   type(z),intent(out),optional::a
   k=0
   select type(p=>a%x1)
     type is(r)
      k=1
   end select
   if (k/=1) print *,711
   allocate ( r:: a%x1(n),stat=k)
   if (k/=0) stop 1000
   write(1,'(z16.16)') loc(a%x1)
   select type(p=>a%x1)
     type is(r)
      k=1
   end select
   if (k/=1) print *,701
  end subroutine
end
use m1
   type(z)::a
do nn=1,10000
  call s1(a)
end do
call chk
print *,'pass'
end
subroutine chk
character(16):: c,cc(100)
k=0
rewind 1
do nn=1,10000
 read(1,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then 
    print *,'Eroor memory leak '
    return 
 endif
 cc(k)=c
2 continue
end do
end
