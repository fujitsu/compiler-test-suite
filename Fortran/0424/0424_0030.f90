integer,external :: f
procedure(integer),pointer::p
p=>f
if (p() /= 1) print *,1
print *,'pass'
end

integer function f()
  f=1
end
