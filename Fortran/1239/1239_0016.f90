implicit none
character(:),pointer::x(:)
integer :: n
n=2
associate( k=> n)
  block
    allocate(character(k)::x(2))
    if (len(x)/=2) print *,1001
    x='12'
    if (x(1)/='12') print *,801
    if (x(2)/='12') print *,802
    if (size(x)/=2) print *,1102
  end block
end associate
print *,'pass'
end
