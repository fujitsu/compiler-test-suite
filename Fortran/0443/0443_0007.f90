module m
  integer::n=2,k=3
  interface
     character(1+n-1) module function sub()
     end 
  end interface
end module m

submodule(m)smod
  interface
     character(1+n-1) function ssub()
       import n
     end 
  end interface
contains
  character(1+n-1) module function sub()
  interface
     character(1+n-1) function ssuba()
       import n
     end
  end interface
    if (ssub()/='12') print *,901
    if (ssuba()/='ab') print *,902
    sub=ssub()
  end 
end submodule smod

submodule(m:smod) smod2
  interface
     module character(1+k-1) function sub2()
      interface
         character(1+n-1) function ssuba()
           import n
         end
      end interface
     end 
  end interface
  interface
     character(1+n-1) module function sub3()
     end 
  end interface
contains
     module character(1+k-1) function sub2()
      interface
         character(1+n-1) function ssuba()
           import n
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
     module character(1+k-1) function sub3()
      interface
         character(1+n-1) function ssuba()
           import n
         end
      end interface
      sub3='123'
     end 
end submodule

use m
if (sub()/='12') print *,2001
print *,'pass'
end
     character(1+n-1) function ssub()
       use m
       ssub='12'
     end 

         character(1+n-1) function ssuba()
           use m
       ssuba='ab'
         end
