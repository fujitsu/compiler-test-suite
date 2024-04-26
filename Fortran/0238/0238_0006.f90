program main

 real(8)          ,dimension(2,2,2:1) ::a = 1
 real(8),parameter,dimension(2,2,2:1) ::b = 1
 real(8),parameter,dimension(2,0)::b1 = maxval(b,dim=1)
 real(8),parameter,dimension(2,0)::b2 = maxval(b,dim=2)
 real(8),parameter,dimension(2,2)::b3 = maxval(b,dim=3)

 if (any(shape( maxval(a,dim=1) )/= [2,0] )) print *,101
 if (any(shape( maxval(a,dim=2) )/= [2,0] )) print *,102
 if (any(shape( maxval(a,dim=3) )/= [2,2] )) print *,103

 if (any( maxval(a,dim=1) /= b1)) print *,201
 if (any( maxval(a,dim=2) /= b2)) print *,202
 if (any( maxval(a,dim=3) /= b3)) print *,203
print *,'pass'
end
