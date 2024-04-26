       character*3 c
       character*9 rc
       parameter (c='abc')
       parameter(rc=repeat(c,3))
       print *,c
       print *,rc
       end
