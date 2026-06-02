subroutine sub(k)
    integer,parameter::brr(2)=[1,2]
    integer::ary(brr(k))
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
end
call sub(2)
print *,'sngg919q : pass'
end
