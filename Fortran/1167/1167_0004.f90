  subroutine s(k)
  integer::v1(5)
  integer::v2(k)
  v1=f()
  v2=v1
  associate (isrc =>v1)
   block
    integer ::ppp(size(isrc(:5)))
    if (size(ppp)/=k) print *,1001
    ppp=1
    if (ppp(5)/=1) print *,1002
   end block
  end associate
  associate (isrc =>v2)
   block
    integer ::pp1(size(isrc(:5)))
    if (size(pp1)/=k) print *,1011
    pp1=1
    if (pp1(5)/=1) print *,1012
   end block
  end associate
  associate (isrc =>v1+ v2)
   block
    integer ::pp2(size(isrc(:5)))
    if (size(pp2)/=k) print *,1031
    pp2=1
    if (pp2(5)/=1) print *,1042
   end block
  end associate
  associate (isrc =>f())
   block
    integer ::pp3(size(isrc(:5)))
    if (size(pp3)/=k) print *,1051
    pp3=1
    if (pp3(5)/=1) print *,1062
   end block
  end associate
contains
   function f() result(r)
   integer     ::r(k)
   r=1
   end function
end
call s(5)
print *,'sngg923q : pass'
end
