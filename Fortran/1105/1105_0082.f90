     module m1
       type :: b
         integer(8):: b1(1)
         character(:),allocatable::ba
         type  (ce),allocatable:: bc
         type  (de),allocatable:: bd
         type  (ee),allocatable:: be
       end type
       type,extends(b)::be
         integer(8):: b2(3)
         class (c),allocatable:: bec
         class (d),allocatable:: bed
         class (e),allocatable:: bee
         character(:),allocatable::bea
       end type
       type :: e
         integer(8):: e1(2)
         character(:),allocatable::ea
       end type
       type,extends(e)::ee
         integer(8):: e2(4)
         character(:),allocatable::eea
       end type
       type :: d
         integer(8):: d1(2)
         class (e),allocatable:: de
         character(:),allocatable::da
       end type
       type,extends(d)::de
         integer(8):: d2(4)
         character(:),allocatable::dea
         class (e),allocatable:: dee
       end type
       type :: c
         integer(8):: c1(2)
         character(:),allocatable::ca
         type (de)            :: cd
         type (ee),allocatable:: ce
       end type
       type,extends(c)::ce
         integer(8):: c2(4)
         type (de),allocatable:: ced
         type (ee)            :: cee
         character(:),allocatable::cea
       end type
     class (b),allocatable :: v2,v1
     integer,parameter::nn=500
contains
 subroutine chk_e(d,kk)
class(e)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(ee)
  if (p%e1(1)/=kk) print *,4981
  if (p%e2(1)/=kk) print *,4982
  kk=kk+1
  if (p%ea/='12')print *,4983,kk,p%ea
  if (p%eea/='12')print *,4984
  k=1
 class default
  print *,41981
end select
if (k/=1)print *,41982
end
 subroutine chk_d(x,kk)
class(d)::x
if (kk>nn) return
k=0
select type(p=>x)
 type is(de)
  if (p%d1(1)/=kk) print *,4901
  if (p%d2(1)/=kk) print *,4902
  kk=kk+1
  if (p%da/='12')print *,4903,kk,p%da
  if (p%dea/='12')print *,4904
  call chk_e(p%de,kk)
  call chk_e(p%dee,kk)
  k=1
 class default
  print *,41901
end select
if (k/=1)print *,41902
end
 subroutine chk_c(d,kk)
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
  call chk_d(p%cd,kk)
  call chk_d(p%ced,kk)
  call chk_e(p%ce,kk)
  call chk_e(p%cee,kk)
  k=1
 class default
  print *,41001
end select
if (k/=1)print *,41002
end
 subroutine chk_b(d,kk)
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
  call chk_d(p%bd,kk)
  call chk_d(p%bed,kk)
  call chk_e(p%be,kk)
  call chk_e(p%bee,kk)
  k=1
 class default
  print *,51001
end select
if (k/=1)print *,51002
end
 subroutine reset_e(d,kk)
class(e)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(ee)
  if (p%e1(1)/=kk) print *,2511
  if (p%e2(1)/=kk) print *,2522
  kk=kk+1
  if (p%ea/='12')print *,2523
  p%ea='ab'
  if (p%eea/='12')print *,2524
  p%eea='ab'
  k=1
 class default
  print *,21101
end select
if (k/=1)print *,21102
end
 subroutine reset_d(x,kk)
class(d)::x
if (kk>nn) return
k=0
select type(p=>x)
 type is(de)
  if (p%d1(1)/=kk) print *,2501
  if (p%d2(1)/=kk) print *,2502
  kk=kk+1
  if (p%da/='12')print *,2503
  p%da='ab'
  if (p%dea/='12')print *,2504
  p%dea='ab'
  call reset_e(p%de,kk)
  call reset_e(p%dee,kk)
  k=1
 class default
  print *,21001
end select
if (k/=1)print *,21002
end
 subroutine reset_c(d,kk)
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
  call reset_d(p%cd,kk)
  call reset_d(p%ced,kk)
  call reset_e(p%ce,kk)
  call reset_e(p%cee,kk)
  k=1
 class default
  print *,21001
end select
if (k/=1)print *,21002
end
 subroutine reset_b(d,kk)
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
  call reset_d(p%bd,kk)
  call reset_d(p%bed,kk)
  call reset_e(p%be,kk)
  call reset_e(p%bee,kk)
  k=1
 class default
  print *,31001
end select
if (k/=1)print *,31002
end
 subroutine set_e(d,kk)
class(e)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(ee)
  p%e1(1)=kk
  p%e2(1)=kk
  kk=kk+1
  allocate(p%ea,source='12')
  allocate(p%eea,source='12')
  k=1
 class default
  print *,1501
end select
if (k/=1)print *,1502
end
 subroutine set_d(x,kk)
class(d)::x
if (kk>nn) return
k=0
select type(p=>x)
 type is(de)
  p%d1(1)=kk
  p%d2(1)=kk
  kk=kk+1
  allocate(p%da,source='12')
  allocate(p%dea,source='12')
  allocate(ee::p%de)
  call set_e(p%de,kk)
  allocate(ee::p%dee)
  call set_e(p%dee,kk)
  k=1
 class default
  print *,1501
end select
if (k/=1)print *,1502
end
 subroutine set_c(d,kk)
class(c)::d
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  p%c1(1)=kk
  p%c2(1)=kk
  allocate(p%ca,source='12')
  allocate(p%cea,source='12')
  kk=kk+1
!  allocate(de::p%cd)
  call set_d(p%cd,kk)
  allocate(de::p%ced)
  call set_d(p%ced,kk)
  allocate(ee::p%ce)
  call set_e(p%ce,kk)
!  allocate(ee::p%cee)
  call set_e(p%cee,kk)
  k=1
 class default
  print *,1001
end select
if (k/=1)print *,1002
end
 subroutine set_b(d,kk)
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
  allocate(de::p%bd)
  call set_d(p%bd,kk)
  allocate(de::p%bed)
  call set_d(p%bed,kk)
  allocate(ee::p%be)
  call set_e(p%be,kk)
  allocate(ee::p%bee)
  call set_e(p%bee,kk)
  k=1
 class default
  print *,1011
end select
if (k/=1)print *,1012
end
end
subroutine s2
  use m1
  allocate(be::v2)
  kk=1
  call set_b(v2,kk)
  allocate(v1,source=v2)
  kk=1
  call reset_b(v2,kk)
  kk=1
  call chk_b(v1,kk)
end
     call s2
     print *,'sngg928p : pass'
     end 

