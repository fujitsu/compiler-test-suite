module m
  integer::n=2,k=3
  interface
     module function sub()
     character(n) sub
     end 
  end interface
end module m

submodule(m)smod
  interface
     character(n) function ssub()
       import n
     end 
  end interface
contains
  module function sub()
  interface
     character(n) function ssuba()
       import n
     end
  end interface
     character(n) sub
    if (ssub()/='12') print *,901
    if (ssuba()/='ab') print *,902
    sub=ssub()
  end 
end submodule smod

submodule(m:smod) smod2
  interface
     module function sub2()
      interface
         function ssuba()
           import n
         character(n) ssuba
         end
      end interface
     character(k)  sub2
     end 
  end interface
  interface
     module function sub3()
     character(n) sub3
     end 
  end interface
contains
     module character(k) function sub2()
      interface
         function ssuba()
           import n
         character(n) ssuba
         end
      end interface
      sub2=ssuba()//'x'
      if (len(sub2)/=3) print *,801
      if (sub2/='abx') print *,802
      if (sub3()/='123') print *,803
     end 
end submodule

submodule(m:smod2) smod3
contains
     module function sub3()
     character(k)  sub3
      interface
         function ssuba()
           import n
         character(n)  ssuba
         end
      end interface
      sub3='123'
     end 
end submodule

use m
if (sub()/='12') print *,2001
print *,'pass'
end
     character(n) function ssub()
       use m
       ssub='12'
     end 

         character(n) function ssuba()
           use m
       ssuba='ab'
         end
