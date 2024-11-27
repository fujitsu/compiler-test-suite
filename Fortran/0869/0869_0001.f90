module mod

      contains
        function f() result(r)
        class(*),pointer::r
         allocate(r, source= 'a')
  select type(r)
    type is(character(*))
if (r/='a') print *,801,len(r),'#'//r//'#'
  end select
        end
end 

   use mod
      select type (v => f())
      type is (integer     )
         print *,101
      type is (character(*))
        if (v/='a') print *,8001,len(v),'#'//v//'#'
      end select

print *,'pass'
end 
