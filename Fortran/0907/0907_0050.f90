       type x
             integer,pointer:: p
       end type
       type(x):: v[*]
       allocate (v%p)
       print *,'pass'
       end

