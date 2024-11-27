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
        class(*),pointer::p
      select type (v => f())
      type is (character(*))
        if (v/='a') print *,8001,len(v),'#'//v//'#'
      end select

allocate(character(1)::p)
select type(p)
      type is (character(*))
  p='a'
      end select
      select type (v => p)
      type is (character(*))
        if (v/='a') print *,8002,len(v),'#'//v//'#'
      end select
print *,'pass'
end 
