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
interface gen
  subroutine sub02(a)
  end subroutine
end interface
 call gen(1)
 call gen(1.0)
rewind 7
read(7,*) k;if (k/=1) print *,101
read(7,*) a;if (abs(a-1.)>0.0001) print *,102
end subroutine
end
  subroutine sub01(k)
if (k==1) write(7,*) k
  end subroutine
  subroutine sub02(a)
if (abs(a-1)<0.001) write(7,*) a
end

   

