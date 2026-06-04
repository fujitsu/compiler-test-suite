subroutine s1
IMPLICIT NONE
integer::n,p
parameter ( p=1 )
n=2
associate( k=> n)
  block
   character(k-1),dimension(p+int(k)) ::ary*(k),cry*(k)(2+k),bry*(k)(2+2),ary2*(k),bry2*(k)(2+2),cry2*(k)(2+k)
    if (len (ary)/=2) print *,1001
    if (len (bry)/=2) print *,1011
    if (len (cry)/=2) print *,1021
    if (len (ary2)/=2) print *,1041
    if (len (bry2)/=2) print *,1031
    if (len (cry2)/=2) print *,1501
    if (size(ary)/=3) print *,1061
    if (size(bry)/=4) print *,1071
    ary(2)='12'
    if (ary(2)/='12') print *,8011
    bry(2)='12'
    if (bry(2)/='12') print *,8021
    if (size(ary2)/=3) print *,1301
    if (size(bry2)/=4) print *,1401
    ary2(2)='12'
    if (ary2(2)/='12') print *,850
    bry2(2)='12'
    if (bry2(2)/='12') print *,8601
    if (size(cry)/=4) print *,1701
    cry(2)='12'
    if (cry(2)/='12') print *,8801
    if (size(cry2)/=4) print *,1901
    cry2(2)='12'
    if (cry2(2)/='12') print *,8701
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
   character(k-1),dimension(p+2     ) ::ary*(k),cry*(k)(2+k),bry*(k)(2+2),ary2*(k),bry2*(k)(2+2),cry2*(k)(2+k)
    if (len (ary)/=2) print *,1001
    if (len (bry)/=2) print *,1001
    if (len (cry)/=2) print *,1001
    if (len (ary2)/=2) print *,1001
    if (len (bry2)/=2) print *,1001
    if (len (cry2)/=2) print *,1001
    if (size(ary)/=3) print *,1001
    if (size(bry)/=4) print *,1001
    ary(2)='12'
    if (ary(2)/='12') print *,800
    bry(2)='12'
    if (bry(2)/='12') print *,8001
    if (size(ary2)/=3) print *,1001
    if (size(bry2)/=4) print *,1001
    ary2(2)='12'
    if (ary2(2)/='12') print *,800
    bry2(2)='12'
    if (bry2(2)/='12') print *,8001
    if (size(cry)/=4) print *,1001
    cry(2)='12'
    if (cry(2)/='12') print *,8001
    if (size(cry2)/=4) print *,1001
    cry2(2)='12'
    if (cry2(2)/='12') print *,8001
  end block
end associate
end
call s1
call s2
print *,'sngg792r : pass'
end

