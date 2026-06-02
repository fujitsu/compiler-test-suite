implicit none
associate( k=> 2)
  block
    integer::ary(k)
    ary(2)=2
write(3, '(z16.16)')loc(ary(1))
write(3, '(z16.16)')loc(ary(2))
write(3,*)ary(2)
    if (ary(2)/=2) print *,800,ary(2)
  end block
end associate
print *,'sngg776r : pass'
end
