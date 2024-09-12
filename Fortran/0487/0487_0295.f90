character(3),target:: st1='1',at1(2,3)='1',st2='1',at2(2,3)='1'
character(:),pointer::s1=>st1,a1(:,:)=>at1,s2,a2(:,:)
s2=>st2
a2=>at2
if (len(s1)/=3) print *,101
if (len(s2)/=3) print *,102
if (len(st1)/=3) print *,103
if (len(st2)/=3) print *,104
if (len(a1)/=3) print *,111
if (len(a2)/=3) print *,112
if (len(at1)/=3) print *,113
if (len(at2)/=3) print *,114
if (any(a1/=at1)) print *,201
if (any(a2/=at2)) print *,202
if (   (s1/=st1)) print *,203
if (   (s2/=st2)) print *,204
print *,'pass'
end
