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
  procedure(sub),pointer:: p 
p=> sub
z=       gen( p )
call z%e1
rewind 1
read(1,*) k
if (k/=1) print *,901
print *,'pass'
end

  subroutine sub
write(1,*) 1
  end
  function s1( d )
write(1,*) 2
   s1=1
  end
