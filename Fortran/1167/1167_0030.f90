subroutine sub
integer::n=2
associate(p=>n)
block
complex :: a(p)
a=(1,2)
associate(q=>a(2))
block
complex :: b(int(q%im))
if (size(a)/=2) print *,902
if (size(b)/=2) print *,903
if (any(abs(a-(1,2))>0.001)) print *,502
end block
end associate
end block
end associate
end
call sub
print *,'sngg953q : pass'
end
