character(2)::x(2)
n=2
associate( k=> n)
  block
    x=[character(size((/(k,kk=1,k)/)))::'12345','a']
    !x=[character(size((/(int(k),k=1,int(k),int(k))/)))::'12345','a']
    if (len(x)/=2) print *,1001
    if (x(1)/='12') print *,801
    if (x(2)/='a') print *,802
    if (size(x)/=2) print *,1102
  end block
end associate
print *,'pass'
end
