subroutine s1
integer a(-3:-2,-1:0,0:1)
associate(p=>a)
 if (any(lbound(p)/=[-3,-1,0])) print *,101
 if (any(ubound(p)/=[-2,0,1])) print *,102
 if (any(lbound((p))/=[1,1,1])) print *,103
 if (any(ubound((p))/=[2,2,2])) print *,104
end associate
!
a=0
associate(p=>+a)
 if (any(lbound( p )/=[1,1,1])) print *,201
 if (any(ubound( p )/=[2,2,2])) print *,202
 if (any(lbound((p))/=[1,1,1])) print *,203
 if (any(ubound((p))/=[2,2,2])) print *,204
end associate
!
associate(p=>(a))
 if (any(lbound( p )/=[1,1,1])) print *,301
 if (any(ubound( p )/=[2,2,2])) print *,302
 if (any(lbound((p))/=[1,1,1])) print *,303
 if (any(ubound((p))/=[2,2,2])) print *,304
end associate

end
call s1
print *,'pass'
end
