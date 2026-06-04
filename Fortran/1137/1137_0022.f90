      
       type ty
          integer  ,allocatable :: acmp(:)
       end type
       class(ty),allocatable :: a(:)
       
       
       allocate(a(2))
       a= ty( [1,2])
       n=0
       select type (a   )
         type is(ty)
           n=1
       end select
       if (n/=1) print *,9001
         
          
       print *,'sngg750j : pass'
       end

