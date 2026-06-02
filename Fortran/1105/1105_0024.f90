   module m1
     type t1                
       integer(8)::z1
       character(:),allocatable::zx
       class(t1),allocatable::zw
     end type
     type,extends(t1)::t1e 
       integer(8)::z2
       character(:),allocatable::zy
     end type
     type tt
       class(t1),allocatable::z3   
     end type
     type t4
       integer(8)::dummy
       type(tt)::tv
     end type
     type t3
       integer(8)::num
       class(t3),allocatable::tyy
       type(t4)::tw
       character(:),allocatable::zw
     end type
     type,extends(t3)::t3e
       character(:),allocatable::zz
     end type
      
     class (t3),allocatable::a1,a2     
contains
     subroutine s1
     allocate(t3e::a2)                       
     kk=1
     call set_t3(a2,kk)
     allocate(a1,source=a2)   
     kk=1
     call reset_t3(a2,kk)
     kk=1
     call chk_t3(a1,kk)
     end
     recursive subroutine chk_t3(d,kk)
     class(t3)::d
     if (d%num/=kk) print *,20021
     kk=kk+1
     if (kk<5) then
      call chk_t3(d%tyy,kk)
     endif
     select type(p=>d%tw%tv%z3)
       type is(t1e)
         if (p%zx/='12')print *,6002
         if (p%zy/='12')print *,6012
         select type(q=>p%zw)
           type is(t1e)
         if (q%zx/='12')print *,6202
         if (q%zy/='12')print *,6212
             select type(w=>q%zw)
               type is(t1e)
         if (w%zx/='12')print *,6102
         if (w%zy/='12')print *,6112
     end select
     end select
     end select
     if (d%zw/='12')print *,8601
     select type(d)
       type is(t3e)
         if (d%zz/='12')print *,7601
     end select
     end
     recursive subroutine reset_t3(d,kk)
     class(t3)::d
     if (d%num/=kk) print *,20022,d%num, kk
     kk=kk+1
     if (kk<5) then
      call reset_t3(d%tyy,kk)
     endif
     select type(p=>d%tw%tv%z3)
       type is(t1e)
         if (p%zx/='12')print *,9002
         p%zx='ab'
         if (p%zy/='12')print *,9012
         p%zy='ab'
         select type(q=>p%zw)
           type is(t1e)
         if (q%zx/='12')print *,9202
         q%zx='ab'
         if (q%zy/='12')print *,9212
         q%zy='ab'
             select type(w=>q%zw)
               type is(t1e)
         if (w%zx/='12')print *,9102
         w%zx='ab'
         if (w%zy/='12')print *,9112
         w%zy='ab'
     end select
     end select
     end select
     if (d%zw/='12')print *,8001
     d%zw='ab'
     select type(d)
       type is(t3e)
         if (d%zz/='12')print *,7001
         d%zz='ab'
     end select
     end
     recursive subroutine set_t3(d,kk)
     class(t3)::d
     d%num=kk
     kk=kk+1
     allocate(t3e::d %tyy)
     if (kk<5) then
      call set_t3(d%tyy,kk)
     endif
     allocate(t1e::d%tw%tv%z3)
     select type(p=>d%tw%tv%z3)
       type is(t1e)
         allocate(p%zx,source='12')
         allocate(p%zy,source='12')
         allocate(t1e::p%zw)
         select type(q=>p%zw)
           type is(t1e)
             allocate(q%zx,source='12')
             allocate(q%zy,source='12')
             allocate(t1e::q%zw)
             select type(w=>q%zw)
               type is(t1e)
                 allocate(w%zx,source='12')
                 allocate(w%zy,source='12')
     end select
     end select
     end select
     allocate(d%zw,source='12')
     select type(d)
       type is(t3e)
         allocate(d%zz,source='12')
     end select
     end
     end
     use m1
     call s1
     print *,'sngg849p : pass'
     end

