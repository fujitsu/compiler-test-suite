subroutine s1()
 interface
  function f() result(r)
   character(:),pointer    ::r
   end function
 end interface
     class(*),pointer    ::name

       name=>f()
   k=0
   select type(p=>name)
    type is(character(*))
      if (len(p)     /=2) print *,2828
      if (p     /='12') print *,2829
      k=1
   end select
   if (k/=1) print *,2928
   end subroutine
call s1()
     print *,'sngg663s : pass'
     end

  function f() result(r)
   character(:),pointer    ::r
   allocate(character(2)::r)
     r='12'
   end function
