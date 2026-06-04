subroutine s1
implicit none
complex::n=(1,2)
associate( k1=> n)
  block 
    character(int(k1%im))::a1(int(k1%im):int(k1%im+1))
    if (len (a1)/=2) print *,1002
    if (size(a1)/=2) print *,1001
    a1='1234'
    if (any(a1(2:3)/='12')) print *,6202
  end block
end associate
end
subroutine s2
implicit none
complex::n=(1,2)
integer::im=2
associate( k1=> n)
  block 
    character(int(k1%im))::a1(im        :       im+1)
    if (len (a1)/=2) print *,1002
    if (size(a1)/=2) print *,1001
    a1='1234'
    if (any(a1(2:3)/='12')) print *,6202
  end block
end associate
end
subroutine s3
implicit none
complex::n=(1,2)
integer::im=2
associate( k1=> n)
  block 
    character(int(   im))::a1(int(k1%im):int(   im+1))
    if (len (a1)/=2) print *,1002
    if (size(a1)/=2) print *,1001
    a1='1234'
    if (any(a1(2:3)/='12')) print *,6202
  end block
end associate
end
subroutine s4
implicit none
complex::n=(1,2)
integer::im=2
associate( k1=> n)
  block 
    character(int(   im))::a1(int(   im):int(k1%im+1))
    if (len (a1)/=2) print *,1002
    if (size(a1)/=2) print *,1001
    a1='1234'
    if (any(a1(2:3)/='12')) print *,6202
  end block
end associate
end
call s1
call s2
call s3
call s4
print *,'sngg935q : pass'
end
