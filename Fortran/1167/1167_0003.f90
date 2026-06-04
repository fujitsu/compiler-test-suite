  subroutine s(k)
  character(5)::v1
  character(k)::v2
  v1=f()
  v2=v1
  associate (isrc =>v1)
   block
    integer ::ppp(len(isrc(1:5)))
    if (size(ppp)/=k) print *,1001
    ppp=1
    if (ppp(5)/=1) print *,1002
   end block
  end associate
  associate (isrc =>v2)
   block
    integer ::pp1(len(isrc(1:5)))
    if (size(pp1)/=k) print *,1011
    pp1=1
    if (pp1(5)/=1) print *,1012
   end block
  end associate
  associate (isrc =>v1//v2)
   block
    integer ::pp2(len(isrc(1:5)))
    if (size(pp2)/=k) print *,1031
    pp2=1
    if (pp2(5)/=1) print *,1042
   end block
  end associate
  associate (isrc =>f())
   block
    integer ::pp3(len(isrc(1:5)))
    if (size(pp3)/=k) print *,1051
    pp3=1
    if (pp3(5)/=1) print *,1062
   end block
  end associate
contains
   function f() result(r)
   character(k)::r
   r='aaaaaa'
   end function
end
call s(5)
print *,'sngg921q : pass'
end
