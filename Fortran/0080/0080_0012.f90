module m
 interface
   module function sub() result(r)
   end
   module function su() result(r)
   end
   module function ww() result(r)
   end
 end interface
end

submodule(m)smod
contains
  function subx() result(r)
r=0
write(1,*) 2
call=sub()
  end
  function suby() result(r)
r=0
print *,202
   contains
   function sub() result(r)
r=0
write(1,*) 100
  end
  end
  module function ww() result(r)
r=0
write(1,*) 5
call=sub()
   contains
   function sub() result(r)
r=0
write(1,*) 6
  end
  end
end

submodule(m:smod)ssmod
contains
  module function su() result(r)
r=0
write(1,*) 11
  end
  module function sub() result(r)
r=0
write(1,*) 1
  end
end

use m
call=ww()
call=sub()
call=subx()
rewind 1
read(1,*)k;if (k/=5) print *,111
read(1,*)k;if (k/=6) print *,121
read(1,*)k;if (k/=1) print *,101
read(1,*)k;if (k/=3) print *,102
    print *,'pass'
end
function subx() result(r)
r=0
write(1,*) 3
end
   function sub() result(r)
r=0
write(1,*) 100
  end
