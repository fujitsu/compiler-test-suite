interface
  function foo(d)
    intent(in):: d
  end function
end interface
procedure(foo), pointer :: p
p=> foo
write(1,*)  p( 1.0 )
rewind 1
read(1,*) a
if (a/=1) print *,301
print *,'pass'
end
  function foo(d)
    intent(in):: d
     foo=d
  end function
