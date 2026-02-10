function f1(p2,c1)
character(*),optional,pointer:: p2
character(2)::f1,f2
character(*):: c1
if (len(c1).ne.1) stop '2-1'
f1 = 'a'
return 
entry    f2(p2,c1)
if (len(c1).ne.1) stop '2-1'
f2 = 'aa'
end function
