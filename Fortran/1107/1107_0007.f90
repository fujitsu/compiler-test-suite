     module m1
       type :: b
         integer(8):: b1(1)
         class (c),allocatable:: bec
       end type
       type :: dd
         integer(8):: d1(2)
         character(:),allocatable::da
       end type
       type :: c
         integer(8):: c1(2)
       end type
       type,extends(c)::ce
         integer(8):: c2(4)
         type (dd),allocatable:: ced
       end type
     class (*),allocatable :: v2,v1
     integer,parameter::nn=500
contains
 subroutine set_b(d)
class(b)::d
    !   print *,"set_b"
k=0
select type(p=>d)
 type is(b)
  allocate(ce::p%bec)
select type(w=>p%bec)
 type is(ce)
  allocate(w%ced)
  allocate(w%ced%da,source='12')
end select
  k=1
end select
if (k/=1)print *,1012
end
end
subroutine s2
  use m1
  allocate(b::v2)
select type(v2)
  type is(b)
  call set_b(v2)
 end select

select type(p=>v2)
  type is(b)
   select type(u=> p%bec)
     type is(ce)
           if (u%ced%da/='12')print *,14903,u%ced%da
       !   print "('aa:',z16.16)",loc(u%ced)
       !   print "('a:',z16.16)",loc(u%ced%da)
   end select
 end select
  allocate(v1,source=v2)
select type(p=>v2)
  type is(b)
   select type(u=> p%bec)
     type is(ce)
           u%ced%da='00'
   end select
 end select
select type(p=>v1)
  type is(b)
   select type(u=> p%bec)
     type is(ce)
           if (u%ced%da/='12')print *,14903,u%ced%da
       !   print "('bb:',z16.16)",loc(u%ced)
       !   print "('b:',z16.16)",loc(u%ced%da)
   end select
 end select
end
     call s2
     print *,'sngg891s : pass'
     end
