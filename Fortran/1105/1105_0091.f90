     module mod
       type :: b
         integer::bd
       end type
       type, extends(b) :: be
          character(:),allocatable::na
       end type

       type a
         integer::d
         class(b),allocatable::ax(:)
       end type
       type(a),allocatable::var,value
end
  subroutine s1
     use mod
     allocate(value)
     allocate(be::value%ax(2))
     select type(p=>value%ax)
      type is(be)
        allocate(p(2)%na,source='11')
     end select
     var=value
     k=0
     select type(p=>var%ax)
     type is(be)
       if (p(2)%na/='11') print *,8001
       p(2)%na='ab'
       k=1
     end select
     if (k/=1) print *,1002
     select type(p=>value%ax)
     type is(be)
       if (p(2)%na/='11') print *,8002
       k=1
     end select
     if (k/=1) print *,2002
end
call s1
     print *,'sngg944p : pass'
     end 

