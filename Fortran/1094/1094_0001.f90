module m1
  interface
    module function s1()
    end
    module function s2(k)
    end
    module function s3(a)
    end
    module function ss()
    end
  end interface
end

submodule (m1) smod
contains
    module procedure s1
write(3,*) 1
    s1=1
    end
    module procedure s2
write(3,*) k
    s2=k
    end
    module procedure s3
write(3,*) a
    s3=a
    end
end
submodule (m1:smod) smod2
   interface gen
     procedure s1,s2,s3
   end interface
contains
    module procedure ss
call=gen()
if(call/=1) print *,901
call=gen(2)
if(call/=2) print *,902
call=gen(3.0)
if(call/=3) print *,903
ss=5
    end
end


use m1
call=ss()
if(call/=5) print *,801
call chk

print *,'sngg515h : pass'
end
subroutine chk
rewind 3
read(3,*) k;if (k/=1) print *,901
read(3,*) k;if (k/=2) print *,902
read(3,*) a;if (a/=3) print *,903
end

