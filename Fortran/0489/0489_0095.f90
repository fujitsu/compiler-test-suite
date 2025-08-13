interface
  subroutine sub
  end
end interface
type gen
  procedure(sub),nopass,pointer:: e1
end type
type(gen):: x

interface gen
  function s1( d )
  end
end interface
x=       gen( sub )
call x%e1
rewind 40
read(40,*) n
if (n/=2) print *,10001
print *,'pass'
end

  subroutine sub
   write(40,*) 2
  end
  function s1( d )
   print *,'called : s1'
   s1=1
  end
