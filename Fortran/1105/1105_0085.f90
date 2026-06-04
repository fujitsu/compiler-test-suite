     module m1
       type :: b
         integer(8):: b1(1)
         character(:),allocatable::ba(:)
         type  (ce),allocatable:: bc(:)
         type  (de),allocatable:: bd(:)
         type  (ee),allocatable:: be(:)
       end type
       type,extends(b)::be
         integer(8):: b2(3)
         class (c),allocatable:: bec(:)
         class (d),allocatable:: bed(:)
         class (e),allocatable:: bee(:)
         character(:),allocatable::bea(:)
       end type
       type :: e
         integer(8):: e1(2)
         character(:),allocatable::ea(:)
       end type
       type,extends(e)::ee
         integer(8):: e2(4)
         character(:),allocatable::eea(:)
       end type
       type :: d
         integer(8):: d1(2)
         class (e),allocatable:: de(:)
         character(:),allocatable::da(:)
       end type
       type,extends(d)::de
         integer(8):: d2(4)
         character(:),allocatable::dea(:)
         class (e),allocatable:: dee(:)
       end type
       type :: c
         integer(8):: c1(2)
         character(:),allocatable::ca(:)
         type (de)            :: cd(2)
         type (ee),allocatable:: ce(:)
       end type
       type,extends(c)::ce
         integer(8):: c2(4)
         type (de),allocatable:: ced(:)
         type (ee)            :: cee(2)
         character(:),allocatable::cea(:)
       end type
     class (*),allocatable :: v2(:),v1(:)
     integer,parameter::nn=500
contains
 subroutine chk_e(d,kk)
class(e)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ee)
  if (p(2)%e1(1)/=kk) print *,4981
  if (p(2)%e2(1)/=kk) print *,4982
  kk=kk+1
  if (p(2)%ea(2)/='12')print *,4983,kk,p(2)%ea(2)
  if (p(2)%eea(2)/='12')print *,4984
  k=1
 class default
  print *,41981
end select
if (k/=1)print *,41982
end
 subroutine chk_d(x,kk)
class(d)::x(:)
if (kk>nn) return
k=0
select type(p=>x)
 type is(de)
  if (p(2)%d1(1)/=kk) print *,4901
  if (p(2)%d2(1)/=kk) print *,4902
  kk=kk+1
  if (p(2)%da(2)/='12')print *,4903,kk,p(2)%da(2)
  if (p(2)%dea(2)/='12')print *,4904
  call chk_e(p(2)%de,kk)
  call chk_e(p(2)%dee,kk)
  k=1
 class default
  print *,41901
end select
if (k/=1)print *,41902
end
 subroutine chk_c(d,kk)
class(c)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  if (p(2)%c1(1)/=kk) print *,4001
  if (p(2)%c2(1)/=kk) print *,4002
  kk=kk+1
  if (p(2)%ca(2)/='12')print *,4003,kk,p(2)%ca(2)
  if (p(2)%cea(2)/='12')print *,4004
  call chk_d(p(2)%cd,kk)
  call chk_d(p(2)%ced,kk)
  call chk_e(p(2)%ce,kk)
  call chk_e(p(2)%cee,kk)
  k=1
 class default
  print *,41001
end select
if (k/=1)print *,41002
end
 subroutine chk_b(d,kk)
class(b)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  if (p(2)%b1(1)/=kk) print *,5001
  if (p(2)%b2(1)/=kk) print *,5002
  kk=kk+1
  if (p(2)%ba(2)/='12')print *,5003
  if (p(2)%bea(2)/='12')print *,5004
  call chk_c(p(2)%bc,kk)
  call chk_c(p(2)%bec,kk)
  call chk_d(p(2)%bd,kk)
  call chk_d(p(2)%bed,kk)
  call chk_e(p(2)%be,kk)
  call chk_e(p(2)%bee,kk)
  k=1
 class default
  print *,51001
end select
if (k/=1)print *,51002
end
 subroutine reset_e(d,kk)
class(e)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ee)
  if (p(2)%e1(1)/=kk) print *,2511
  if (p(2)%e2(1)/=kk) print *,2522
  kk=kk+1
  if (p(2)%ea(2)/='12')print *,2523
  p(2)%ea='ab'
  if (p(2)%eea(2)/='12')print *,2524
  p(2)%eea='ab'
  k=1
 class default
  print *,21101
end select
if (k/=1)print *,21102
end
 subroutine reset_d(x,kk)
class(d)::x(:)
if (kk>nn) return
k=0
select type(p=>x)
 type is(de)
  if (p(2)%d1(1)/=kk) print *,2501
  if (p(2)%d2(1)/=kk) print *,2502
  kk=kk+1
  if (p(2)%da(2)/='12')print *,2503
  p(2)%da='ab'
  if (p(2)%dea(2)/='12')print *,2504
  p(2)%dea='ab'
  call reset_e(p(2)%de,kk)
  call reset_e(p(2)%dee,kk)
  k=1
 class default
  print *,21001
end select
if (k/=1)print *,21002
end
 subroutine reset_c(d,kk)
class(c)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  if (p(2)%c1(1)/=kk) print *,2001
  if (p(2)%c2(1)/=kk) print *,2002
  kk=kk+1
  if (p(2)%ca(2)/='12')print *,2003
  p(2)%ca='ab'
  if (p(2)%cea(2)/='12')print *,2004
  p(2)%cea='ab'
  call reset_d(p(2)%cd,kk)
  call reset_d(p(2)%ced,kk)
  call reset_e(p(2)%ce,kk)
  call reset_e(p(2)%cee,kk)
  k=1
 class default
  print *,21001
end select
if (k/=1)print *,21002
end
 subroutine reset_b(d,kk)
class(b)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  if (p(2)%b1(1)/=kk) print *,3001
  if (p(2)%b2(1)/=kk) print *,3002
  kk=kk+1
  if (p(2)%ba(2)/='12')print *,3003
  p(2)%ba='ab'
  if (p(2)%bea(2)/='12')print *,3004
  p(2)%bea='ab'
  call reset_c(p(2)%bc,kk)
  call reset_c(p(2)%bec,kk)
  call reset_d(p(2)%bd,kk)
  call reset_d(p(2)%bed,kk)
  call reset_e(p(2)%be,kk)
  call reset_e(p(2)%bee,kk)
  k=1
 class default
  print *,31001
end select
if (k/=1)print *,31002
end
 subroutine set_e(d,kk)
class(e)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ee)
  p(2)%e1(1)=kk
  p(2)%e2(1)=kk
  kk=kk+1
  allocate(p(2)%ea(2),source='12')
  allocate(p(2)%eea(2),source='12')
  k=1
 class default
  print *,1501
end select
if (k/=1)print *,1502
end
 subroutine set_d(x,kk)
class(d)::x(:)
if (kk>nn) return
k=0
select type(p=>x)
 type is(de)
  p(2)%d1(1)=kk
  p(2)%d2(1)=kk
  kk=kk+1
  allocate(p(2)%da(2),source='12')
  allocate(p(2)%dea(2),source='12')
  allocate(ee::p(2)%de(2))
  call set_e(p(2)%de,kk)
  allocate(ee::p(2)%dee(2))
  call set_e(p(2)%dee,kk)
  k=1
 class default
  print *,1501
end select
if (k/=1)print *,1502
end
 subroutine set_c(d,kk)
class(c)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(ce)
  p(2)%c1(1)=kk
  p(2)%c2(1)=kk
  allocate(p(2)%ca(2),source='12')
  allocate(p(2)%cea(2),source='12')
  kk=kk+1
! allocate(de::p(2)%cd(2))
  call set_d(p(2)%cd,kk)
  allocate(de::p(2)%ced(2))
  call set_d(p(2)%ced,kk)
  allocate(ee::p(2)%ce(2))
  call set_e(p(2)%ce,kk)
! allocate(ee::p(2)%cee(2))
  call set_e(p(2)%cee,kk)
  k=1
 class default
  print *,1001
end select
if (k/=1)print *,1002
end
 subroutine set_b(d,kk)
class(b)::d(:)
if (kk>nn) return
k=0
select type(p=>d)
 type is(be)
  p(2)%b1(1)=kk
  p(2)%b2(1)=kk
  kk=kk+1
  allocate(p(2)%ba(2),source='12')
  allocate(p(2)%bea(2),source='12')
  allocate(ce::p(2)%bc(2))
  call set_c(p(2)%bc,kk)
  allocate(ce::p(2)%bec(2))
  call set_c(p(2)%bec,kk)
  allocate(de::p(2)%bd(2))
  call set_d(p(2)%bd,kk)
  allocate(de::p(2)%bed(2))
  call set_d(p(2)%bed,kk)
  allocate(ee::p(2)%be(2))
  call set_e(p(2)%be,kk)
  allocate(ee::p(2)%bee(2))
  call set_e(p(2)%bee,kk)
  k=1
 class default
  print *,1011
end select
if (k/=1)print *,1012
end
end
subroutine s2
  use m1
  allocate(be::v2(2))
  kk=1
select type(v2)
  type is(be)
  call set_b(v2,kk)
end select
  allocate(v1,source=v2)
  kk=1
select type(v2)
  type is(be)
  call reset_b(v2,kk)
end select
  kk=1
select type(v1)
  type is(be)
  call chk_b(v1,kk)
end select
end
     call s2
     print *,'sngg931p : pass'
     end 

