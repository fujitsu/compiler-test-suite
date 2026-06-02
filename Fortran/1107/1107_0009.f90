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
         type (dd),allocatable:: ced
       end type
     class (*),allocatable :: v2,v1
     integer,parameter::nn=500
contains
 subroutine set_b(d)
class(b)::d
     !   print *,"set_b"
  allocate(d%bec)
  allocate(d%bec%ced)
  allocate(d%bec%ced%da,source='12')
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
           if (p%bec%ced%da/='12')print *,14903,p%bec%ced%da
      !     print "('aa:',z16.16)",loc(p%bec%ced)
      !     print "('a:',z16.16)",loc(p%bec%ced%da)
 end select
  allocate(v1,source=v2)
select type(p=>v2)
  type is(b)
           p%bec%ced%da='00'
 end select
select type(p=>v1)
  type is(b)
           if (p%bec%ced%da/='12')print *,14903,p%bec%ced%da
       !    print "('bb:',z16.16)",loc(p%bec%ced)
       !    print "('b:',z16.16)",loc(p%bec%ced%da)
 end select
end
     call s2
     print *,'sngg893s : pass'
     end
