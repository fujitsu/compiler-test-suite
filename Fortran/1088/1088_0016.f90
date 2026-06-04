n=2
  block 
character(2)::x(2)
    x=[character(n)::'12345','a']
    if (len(x)/=2) print *,1001
    if (x(1)/='12') print *,801
    if (x(2)/='a') print *,802
    if (size(x)/=2) print *,1102
  end block
print *,'sngg097p : pass'
end
