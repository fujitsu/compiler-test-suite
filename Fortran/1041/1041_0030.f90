recursive function jfun(ii) result(ians)
if (ii.eq.1) then
    ians= jfun1(10)
    return
end if
10 ians=ii
return
entry jfun1(ii) result(ians)
ians=ii
return
end function

recursive function kfun(ii) result(ians)
if (ii.eq.1) then
    ians= kfun2(10)
    return
end if
10 ians=ii
return
entry kfun1(ii) result(ians)
ians=ii
return
entry kfun2(ii) result(ians)
ians=kfun1(99)
return
end function

recursive function ifun(ii) result(ians)
10 ians=ii
return
entry ifun1(ii) result(ians)
ians=ifun(88)
if (1.eq.2) ians=ifun1(88)
return
end function

integer arr(10)
do i=1,10
 arr(i)=jfun(i)
end do
if (all(arr.ne.(/10,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"


do i=1,10
 arr(i)=kfun(i)
end do
if (all(arr.ne.(/99,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"

do i=1,10
 arr(i)=ifun1(i)
end do
if (all(arr.ne.(/88,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"

print *,"pass"
end
