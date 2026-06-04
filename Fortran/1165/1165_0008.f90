character(2)::x(2)
n=2
associate( k=> n)
  block
    if (size((/(k,kk=1,k)/)).ne.2) print *,'err'
  end block
end associate
print *,'pass'
end
