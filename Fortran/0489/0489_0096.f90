interface
  subroutine sub
  end
end interface
type gen
  procedure(sub),nopass,pointer:: e1
end type

type (gen)::y
y=       gen( sub )
call y%e1
rewind 41
read(41,*) n
rewind 41
if (n/=2) print *,201

print *,'pass'
end

  subroutine sub
   write(41,*) 2
  end
  function s1( d )
   print *,'called : s1'
   s1=1
  end
