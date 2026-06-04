associate( k=> 2)
  block
    integer::ary(k)
    ary(2)=2
write(1, '(z16.16)')loc(ary(1))
write(1, '(z16.16)')loc(ary(2))
write(1,*)ary(2)
write(2,*) 2
rewind 2
read(2,*) n
do m=2,n
    if (ary(m)/=2) print *,800,ary(m)
end do
  end block
end associate
print *,'sngg777r : pass'
end
