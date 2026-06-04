subroutine s1
IMPLICIT NONE
integer::n,p
parameter ( p=1 )
n=2
associate( k=> n)
  block
   integer,dimension(p,int(k)) ::ary,cry(2,k),bry(2,2),ary2,bry2(2,2),cry2(2,k)
    if (size(ary)/=2) print *,1001
    if (size(bry)/=4) print *,1001
    ary(1,2)=2
    if (ary(1,2)/=2) print *,800
    bry(2,2)=2
    if (bry(2,2)/=2) print *,8001
    if (size(ary2)/=2) print *,1001
    if (size(bry2)/=4) print *,1001
    ary2(1,2)=2
    if (ary2(1,2)/=2) print *,800
    bry2(2,2)=2
    if (bry2(2,2)/=2) print *,8001
    if (size(cry)/=4) print *,1001
    cry(2,2)=2
    if (cry(2,2)/=2) print *,8001
    if (size(cry2)/=4) print *,1001
    cry2(2,2)=2
    if (cry2(2,2)/=2) print *,8001
  end block
end associate
end
subroutine s2
IMPLICIT NONE
integer::n,p
parameter ( p=1 )
n=2
associate( k=> n)
  block
   integer,dimension(p,2     ) ::ary,cry(2,k),bry(2,2),ary2,bry2(2,2),cry2(2,k)
    if (size(ary)/=2) print *,1001
    if (size(bry)/=4) print *,1001
    ary(1,2)=2
    if (ary(1,2)/=2) print *,800
    bry(2,2)=2
    if (bry(2,2)/=2) print *,8001
    if (size(ary2)/=2) print *,1001
    if (size(bry2)/=4) print *,1001
    ary2(1,2)=2
    if (ary2(1,2)/=2) print *,800
    bry2(2,2)=2
    if (bry2(2,2)/=2) print *,8001
    if (size(cry)/=4) print *,1001
    cry(2,2)=2
    if (cry(2,2)/=2) print *,8001
    if (size(cry2)/=4) print *,1001
    cry2(2,2)=2
    if (cry2(2,2)/=2) print *,8001
  end block
end associate
end
call s1
call s2
print *,'sngg789r : pass'
end

