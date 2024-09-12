subroutine s1(k1,k2,a)
integer a(k1,k2)
associate( p=> a+1)
 if (any(shape(p)/=[k1,k2])) print *,101
 if (any([p]/=[2,3,4,5,6,7])) print *,102
end associate
end
integer a(2,3)
a=reshape([1,2,3,4,5,6],[2,3])
call s1(2,3,a)
print *,'pass'
end
