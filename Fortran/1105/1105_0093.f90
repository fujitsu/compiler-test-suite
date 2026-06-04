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
       type, extends(a) :: ae
         class(b),allocatable::bx(:)
       end type
    
       class(a),allocatable::var(:),value(:)
end
  subroutine s1
     use mod
     allocate(ae::value(2))
     select type(value)
       type is(ae)
        allocate(be::value(2)%bx(2))
        select type(p=>value(2)%bx)
          type is(be)
          allocate(p(2)%na,source='11')
        end select
     end select
     allocate(be::value(2)%ax(2))
     select type(p=>value(2)%ax)
      type is(be)
        allocate(p(2)%na,source='11')
     end select
     var=value
     k=0
     select type(p=>value)
       type is(ae)
        select type(p=>p(2) %bx)
          type is(be)
          p(2)%na='ab'
       k=1
        end select
     end select
     if (k/=1) print *,20221
     k=0
     select type(p=>var)
       type is(ae)
        select type(q=>p(2)%bx)
          type is(be)
          if (q(2)%na/='11') print *,7002
       k=1
        end select
     end select
     if (k/=1) print *,2022
     k=0
     select type(p=>var(2)%ax)
     type is(be)
       if (p(2)%na/='11') print *,8001
       p(2)%na='ab'
       k=1
     end select
     if (k/=1) print *,1002
     select type(p=>value(2)%ax)
     type is(be)
       if (p(2)%na/='11') print *,8002
       k=1
     end select
     if (k/=1) print *,2002
end
call s1
     print *,'sngg946p : pass'
     end 

