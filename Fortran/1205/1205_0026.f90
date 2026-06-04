 module m
   type ty
     integer(8) :: value
     class(ty),allocatable::node  
     character(:),allocatable::c1
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e
   end type
  type tt
     class(ty),allocatable::node1
     integer(8) :: value2
    class(tt),allocatable::node2 
     character(:),allocatable::c2
   end type
   type,extends(tt)::tte
     character(:),allocatable::c2e
   end type
 integer,parameter::loop=2
 character(*),parameter::a1=repeat('a',1000)
 character(*),parameter::b1=repeat('b',1000)
 contains
 recursive subroutine alc(t,n)
 class (ty) :: t
   n=n+1
   t%value=n
   allocate(t%c1,source=a1)
 if (n<loop) then
   allocate(t%node)
   call alc(t%node,n)
 endif
 end
 recursive subroutine alc_tt(t,n2)
 class (tt) :: t
   n2=n2+1
   t%value2=n2+100
   allocate(t%c2,source=a1)
   n=0
   allocate(t%node1)
   call alc(t%node1,n)

 if (n2<loop) then
   allocate(t%node2)
   call alc_tt(t%node2,n2)
 endif
 end
subroutine set(t)
 class (tt) :: t
 t%c2=b1
 t%node1%c1=b1
 t%node1%node%c1=b1
 if (allocated(t%node1%node%node)) print *,8002
 t%node2%c2=b1
 t%node2%node1%c1=b1
 t%node2%node1%node%c1=b1
 if (allocated(t%node2%node1%node%node)) print *,8003
 if (allocated(t%node2%node2)) print *,8004
end

subroutine chk_value(d)
 class (tt) :: d
 if (d%value2/=101) print *,7001
 if (d%c2/=a1) print *,7002
 if (d%node1%value/=1) print *,7003
 if (d%node1%c1/=a1) print *,7004
 if (d%node1%node%value/=2) print *,7013
 if (d%node1%node%c1/=a1) print *,7014
 if (d%node2%value2/=102) print *,7011
 if (d%node2%c2/=a1) print *,7012
 if (d%node2%node1%value/=1) print *,7031,d%node2%node1%value
 if (d%node2%node1%c1/=a1) print *,7032
 if (d%node2%node1%node%value/=2) print *,7042
 if (d%node2%node1%node%c1/=a1) print *,7042
end
 end module

 subroutine s1
 USE m
 class (tt),allocatable:: t,y
allocate(t)

 n2=0
 call alc_tt(t,n2)

y=t

call set(t)
call chk_value(y)
 end
 call s1
 print*, "sngg037r : pass"
 end
    subroutine  chk(k)
     character(16)::n1,n2
     rewind (k)
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=100) n2
       if (n1==n2) return
     end do
  100 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=200) n2
       if (n1==n2) return
     end do
  200 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=300) n2
       if (n1==n2) return
     end do
  300 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=400) n2
       if (n1==n2) return
     end do
  400 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=500) n2
       if (n1==n2) return
     end do
  500 print *,"Please check UNIT",k
     end
