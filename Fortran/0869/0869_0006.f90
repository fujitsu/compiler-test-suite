module mod

      contains
        function f() result(r)
        class(*),allocatable::r
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

      select type (v=>f())
      type is (integer     )
         print *,101
      type is (character(*))
        if (v/='a') print *,8001,len(v),'#'//v//'#'
      type is (temp_type)
      end select

print *,'pass'
end 
