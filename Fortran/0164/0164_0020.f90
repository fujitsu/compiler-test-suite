module m1
interface gen
  subroutine sub01(k)
  end subroutine
end interface
end
use m1
call x
print *,'pass'
contains
 subroutine x
use m1
interface gen
  subroutine sub02(a)
  end subroutine
end interface
 call gen(1)
 call gen(1.0)
rewind 1
read(1,*) k;if (k/=1) print *,101
read(1,*) a;if (abs(a-1.)>0.0001) print *,102
end subroutine
end
  subroutine sub01(k)
if (k==1) write(1,*) k
  end subroutine
  subroutine sub02(a)
if (abs(a-1)<0.001) write(1,*) a
end

   

