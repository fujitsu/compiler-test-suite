interface
  subroutine sub
  end
end interface
type gen
  procedure(sub),nopass,pointer:: e1
end type

interface gen
  function s1( d )
  end
end interface
type(gen):: z
z=       gen( sub )
call z%e1
rewind 1
read(1,*) n;if (n/=10) print *,1001
print *,'pass'
end

  subroutine sub
   write(1,*) 10
  end
  function s1( d )
   print *,'called : s1'
   s1=1
  end
