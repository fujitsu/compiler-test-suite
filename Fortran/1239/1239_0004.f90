character(2)::x(2)
n=2
associate( k=> n)
  block
    character(size((/(int(k),k=1,int(k),int(k)-1)/)))::xa(size((/(int(k),k=1,int(k),int(k)-1)/)))
    x=['12345','a']
    xa=x
    if (len(xa)/=2) print *,1001
    if (xa(1)/='12') print *,801,x(1)
    if (xa(2)/='a') print *,802
    if (size(xa)/=2) print *,1102
  end block
end associate
print *,'pass'
end
