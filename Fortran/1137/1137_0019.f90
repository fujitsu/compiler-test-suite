     
     use iso_c_binding,only:c_ptr,C_NULL_PTR
     type::ty
       type (c_ptr) :: base_address = C_NULL_PTR
       integer, allocatable :: shape(:)
       integer :: type_kind
     end type
      
       type tty
          class(ty),allocatable :: acmp
       end type
       type,extends(tty)::etty
          integer :: kk
       end type
       class(ty),allocatable :: a
       
       class(etty),pointer     :: cobj
       integer::k=1
       
       a= ty( C_NULL_PTR , [1,2], 10)
       allocate(cobj,source=etty( a    , k ) )
       n=0
       select type (cobj)
        type is(etty)
          select type(x=>cobj%acmp)
             type is (ty)
               n=1
               if (any(x%shape/=[1,2])) print *,2020
               if (x%type_kind/=10) print *,2020
          end select
       end select
       if (n/=1) print *,9001
         
          
       print *,'sngg747j : pass'
       end

