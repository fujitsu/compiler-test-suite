character(2),pointer::x(:)
character(3) :: arr(2)
arr(1)='err'
arr(2)='ok'
n=2
associate( k=> n)
  block
    allocate(x(2),errmsg=arr(k))
    if (len(x)/=2) print *,1001
    x='12'
    if (x(1)/='12') print *,801
    if (size(x)/=2) print *,1102
  end block
end associate
print *,'pass'
end
