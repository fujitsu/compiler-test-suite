     module m1
       type :: b
         integer(8):: b1(1)
         character(:),allocatable::ba
         class (c),allocatable:: bc
       end type
       type :: c
         integer(8):: c1(2)
         character(:),allocatable::ca
         class (b),allocatable:: cb
       end type
       type,extends(b)::be
         integer(8):: b2(3)
         class (c),allocatable:: bec
         character(:),allocatable::bea
       end type
       type,extends(c)::ce
         integer(8):: c2(4)
         class (b),allocatable:: ceb
         character(:),allocatable::cea
       end type
     class (c),allocatable :: v2,v1
     integer,parameter::nn=25
contains
recursive subroutine chk_c(d,kk)
class(c)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  if (p%c1(1)/=kk) print *,4001
  if (p%c2(1)/=kk) print *,4002
  kk=kk+1
  if (p%ca/='12')print *,4003,kk,p%ca
  if (p%cea/='12')print *,4004
  call chk_b(p%cb,kk)
  call chk_b(p%ceb,kk)
  k=1
 class default
  print *,41001
end select
if (k/=1)print *,41002
end
recursive subroutine chk_b(d,kk)
class(b)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  if (p%b1(1)/=kk) print *,5001
  if (p%b2(1)/=kk) print *,5002
  kk=kk+1
  if (p%ba/='12')print *,5003
  if (p%bea/='12')print *,5004
  call chk_c(p%bc,kk)
  call chk_c(p%bec,kk)
  k=1
 class default
  print *,51001
end select
if (k/=1)print *,51002
end
recursive subroutine reset_c(d,kk)
class(c)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  if (p%c1(1)/=kk) print *,2001
  if (p%c2(1)/=kk) print *,2002
  kk=kk+1
  if (p%ca/='12')print *,2003
  p%ca='ab'
  if (p%cea/='12')print *,2004
  p%cea='ab'
  call reset_b(p%cb,kk)
  call reset_b(p%ceb,kk)
  k=1
 class default
  print *,21001
end select
if (k/=1)print *,21002
end
recursive subroutine reset_b(d,kk)
class(b)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  if (p%b1(1)/=kk) print *,3001
  if (p%b2(1)/=kk) print *,3002
  kk=kk+1
  if (p%ba/='12')print *,3003
  p%ba='ab'
  if (p%bea/='12')print *,3004
  p%bea='ab'
  call reset_c(p%bc,kk)
  call reset_c(p%bec,kk)
  k=1
 class default
  print *,31001
end select
if (k/=1)print *,31002
end
recursive subroutine set_c(d,kk)
class(c)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  p%c1(1)=kk
  p%c2(1)=kk
  kk=kk+1
  allocate(p%ca,source='12')
  allocate(p%cea,source='12')
  allocate(be::p%cb)
  call set_b(p%cb,kk)
  allocate(be::p%ceb)
  call set_b(p%ceb,kk)
  k=1
 class default
  print *,1001
end select
if (k/=1)print *,1002
end
recursive subroutine set_b(d,kk)
class(b)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  p%b1(1)=kk
  p%b2(1)=kk
  kk=kk+1
  allocate(p%ba,source='12')
  allocate(p%bea,source='12')
  allocate(ce::p%bc)
  call set_c(p%bc,kk)
  allocate(ce::p%bec)
  call set_c(p%bec,kk)
  k=1
 class default
  print *,1011
end select
if (k/=1)print *,1012
end
end
subroutine s2
  use m1
  allocate(ce::v2)
  kk=1
  call set_c(v2,kk)
  allocate(v1,source=v2)
  kk=1
  call reset_c(v2,kk)
  kk=1
  call chk_c(v1,kk)
end
     call s2
     print *,'sngg856p : pass'
     end 

