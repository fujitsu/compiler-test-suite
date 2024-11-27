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
type temp_type
end type

      select type (v => f())
      type is (temp_type)
      type is (character(*))
        if (v/='a') print *,8001,len(v),'#'//v//'#'
      end select

print *,'pass'
end 
