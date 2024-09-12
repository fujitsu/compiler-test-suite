interface 
  subroutine sub(k)
  end subroutine
end interface
procedure(sub):: x
procedure(sub),pointer:: p
p=>x
call p(n)
if (n/=1) print *,101
print *,'pass'
end
  subroutine x(k)
k=1
  end subroutine
