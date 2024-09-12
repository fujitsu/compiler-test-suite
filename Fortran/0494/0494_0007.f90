real(2)::a2=1
real(4)::a4=1
complex(2)::c2=0
complex(4)::c4=0
if (a2/=1._2) print *,101
if (a2/=1._4) print *,102
if (a4/=1._2) print *,103
if (a4/=1._4) print *,104
if (c2/=(0._2,0._2)) print *,201
if (c2/=(0.,0.)) print *,202
if (c4/=(0._2,0._2)) print *,203
if (c4/=(0.,0.)) print *,204
print *,'pass'
end
