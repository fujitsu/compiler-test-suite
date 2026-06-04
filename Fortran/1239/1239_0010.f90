character(2)::x(2)
integer :: n(2)
n=2
associate( k=> n)
  block
    x=[character(int(k(1)+0))::'12345','a']
    if (len(x)/=2) print *,1001
    if (x(1)/='12') print *,801
    if (x(2)/='a') print *,802
    if (size(x)/=2) print *,1102
  end block
end associate
print *,'pass'
end
