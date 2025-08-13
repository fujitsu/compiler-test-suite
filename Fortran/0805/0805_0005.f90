module km
 integer,parameter::kh=1000
end
module m1
  type x
     integer::x1
     contains
       final:: xp
  end type
  type y
    integer::y1
    type(x),allocatable::y2(:)
  end type
contains
  subroutine xp(d)
    type(x):: d(:)
      if (any(d%x1/=2) .and. any(d%x1/=12) .and. any(d%x1/=22)) print *,1301
    write(14,*) 100
  end subroutine
 end
subroutine s1
use m1
  type(y):: v(2)
  allocate(v(2)%y2(2))
write(13,'(z16.16)') loc( v(2)%y2 )
  v(2)%y1=1
  v(2)%y2(1)%x1=2
  v(2)%y2(2)%x1=2
 !$omp parallel firstprivate(v)

  v(2)%y1=11
  v(2)%y2(1)%x1=12
  v(2)%y2(2)%x1=12
  if (v(2)%y1/=11) print *,1201
  if (v(2)%y2(1)%x1/=12) print *,1301
  if (v(2)%y2(2)%x1/=12) print *,1301
  deallocate(v(2)%y2)
  if (allocated( v(2)%y2 ) ) print *,14001
  allocate(v(2)%y2(2))
  v(2)%y1=21
  v(2)%y2(1)%x1=22
  v(2)%y2(2)%x1=22
  if (v(2)%y1/=21) print *,1201
  if (v(2)%y2(1)%x1/=22) print *,1301
  if (v(2)%y2(2)%x1/=22) print *,1301

!$omp end parallel
  if (v(2)%y1/=1) print *,201
  if (v(2)%y2(1)%x1/=2) print *,301
  if (v(2)%y2(2)%x1/=2) print *,301
end
use km
call omp_set_num_threads(2)
do k=1,kh
call s1
end do
call chk(13)
call chkfinal
print *,'pass'
end
subroutine chkfinal
use km
rewind 14
do nn=1,kh*5
 read(14,*) kk
   if (kk/=100) print *,2901
end do
 read(14,*,end=3) kk
   print *,2902
3 end
subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then
    print *,'Eroor memory leak ',n
    return
 endif
 cc(k)=c
2 continue
end do
end

  
