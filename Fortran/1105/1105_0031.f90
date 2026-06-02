     module m1
       type :: b
         integer(8):: b1(1)
         character(:),allocatable::ba(:)
         class (c),allocatable:: bc(:)
       end type
       type :: c
         integer(8):: c1(2)
         character(:),allocatable::ca(:)
         class (b),allocatable:: cb(:)
       end type
       type,extends(b)::be
         integer(8):: b2(3)
         class (c),allocatable:: bec(:)
         character(:),allocatable::bea(:)
       end type
       type,extends(c)::ce
         integer(8):: c2(4)
         class (b),allocatable:: ceb(:)
         character(:),allocatable::cea(:)
       end type
     class (c),allocatable :: v2(:),v1(:)
     integer,parameter::nn=100
contains
recursive subroutine chk_c(d,kk)
class(c)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  if (p(2)%c1(1)/=kk) print *,4001
  if (p(2)%c2(1)/=kk) print *,4002
  kk=kk+1
 do n1=1,2
  if (any(p(n1)%ca/='12'))print *,4003,kk
  if (any(p(n1)%cea/='12'))print *,4004
  call chk_b(p(n1)%cb,kk)
  call chk_b(p(n1)%ceb,kk)
 end do
  k=1
 class default
  print *,41001
end select
if (k/=1)print *,41002
end
recursive subroutine chk_b(d,kk)
class(b)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  if (p(2)%b1(1)/=kk) print *,5001
  if (p(2)%b2(1)/=kk) print *,5002
  kk=kk+1
 do n1=1,2
  if (any(p(n1)%ba/='12'))print *,5003
  if (any(p(n1)%bea/='12'))print *,5004
  call chk_c(p(n1)%bc,kk)
  call chk_c(p(n1)%bec,kk)
 end do
  k=1
 class default
  print *,51001
end select
if (k/=1)print *,51002
end
recursive subroutine reset_c(d,kk)
class(c)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  if (p(2)%c1(1)/=kk) print *,2001
  if (p(2)%c2(1)/=kk) print *,2002
  kk=kk+1
 do n1=1,2
  if (any(p(n1)%ca/='12'))print *,2003
  p(n1)%ca='ab'
  if (any(p(n1)%cea/='12'))print *,2004
  p(n1)%cea='ab'
  call reset_b(p(n1)%cb,kk)
  call reset_b(p(n1)%ceb,kk)
end do
  k=1
 class default
  print *,21001
end select
if (k/=1)print *,21002
end
recursive subroutine reset_b(d,kk)
class(b)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  if (p(2)%b1(1)/=kk) print *,3001
  if (p(2)%b2(1)/=kk) print *,3002
  kk=kk+1
 do n1=1,2
  if (any(p(n1)%ba/='12'))print *,3003
  p(n1)%ba='ab'
  if (any(p(n1)%bea/='12'))print *,3004
  p(n1)%bea='ab'
  call reset_c(p(n1)%bc,kk)
  call reset_c(p(n1)%bec,kk)
end do
  k=1
 class default
  print *,31001
end select
if (k/=1)print *,31002
end
recursive subroutine set_c(d,kk)
class(c)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  p%c1(1)=kk
  p%c2(1)=kk
  kk=kk+1
  do n1=1,2
  allocate(p(n1)%ca(2),source='12')
  allocate(p(n1)%cea(2),source='12')
  allocate(be::p(n1)%cb(2))
  call set_b(p(n1)%cb,kk)
  allocate(be::p(n1)%ceb(2))
  call set_b(p(n1)%ceb,kk)
  end do
  k=1
 class default
  print *,1001
end select
if (k/=1)print *,1002
end
recursive subroutine set_b(d,kk)
class(b)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  p%b1(1)=kk
  p%b2(1)=kk
  kk=kk+1
  do n1=1,2
  allocate(p(n1)%ba(2),source='12')
  allocate(p(n1)%bea(2),source='12')
  allocate(ce::p(n1)%bc(2))
  call set_c(p(n1)%bc,kk)
  allocate(ce::p(n1)%bec(2))
  call set_c(p(n1)%bec,kk)
  end do
  k=1
 class default
  print *,1011
end select
if (k/=1)print *,1012
end
end
subroutine s2
  use m1
  allocate(ce::v2(2))
  kk=1
  call set_c(v2,kk)
  allocate(v1,source=v2)
  kk=1
  call reset_c(v2,kk)
  kk=1
  call chk_c(v1,kk)
end
     call s2
     print *,'sngg857p : pass'
     end 

