module m0
 interface
   module subroutine s1(x)
     procedure(ss)::x
   end 
   module subroutine s2(x,y)
     procedure(ss)::x,y
   end 
 end interface
 contains
   subroutine ss(k1)
write(1,*) k1
   end
end
submodule (m0) smod
 contains
   module subroutine s2(x,y)
     procedure(ss)::x,y
     call y(200)
     call x(300)
   end 
   module subroutine s1(x)
     procedure(ss)::x
     call x(100)
   end 
end

use m0
call s1(ss)
call s2(ss,ss)
rewind 1
read(1,*) k
if(k/=100) print *,1001
read(1,*) k
if(k/=200) print *,1002
read(1,*) k
if(k/=300) print *,1003
print *,'pass'
end

