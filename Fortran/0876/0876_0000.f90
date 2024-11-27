module mod

      contains
        function f() result(r)
        class(*),pointer::r
         allocate(r, source= 1)
  select type(r)
    type is(character(*))
if (r/='a') print *,801,len(r),'#'//r//'#'
  end select
        end
end 

   use mod
        class(*),pointer::p
k=0
      select type (v => f())
      type is (character(*))
        if (v/='a') print *,8001,len(v),'#'//v//'#'
 k=1
      end select
if (k/=0) print *,99000

allocate(character(1)::p)
select type(p)
      type is (character(*))
p='a'
end select
      select type (v => p)
      type is (character(*))
        if (v/='a') print *,8002,len(v),'#'//v//'#'
 k=1
      end select
if (k/=1) print *,99002
print *,'pass'
end 
