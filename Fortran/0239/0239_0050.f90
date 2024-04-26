module m1
contains
subroutine s2(i,j,k)
character(i)::k1
character(i),dimension(j,k)::k2,k3,k4
character(3),dimension(j,k)::k5,k6,k7
integer     ,dimension(j,k)::k8,k9,ka
i=9999;j=9999;k=9999
k1='1234'
k2='1234'
k3='1234'
k4='1234'
k5='1234'
k6='1234'
k7='1234'
k8=1234
k9=1234
ka=1234
 associate(p1=>k1,p2=>k2,p3=>k3,p4=>k4,p5=>k5,p6=>k6,p7=>k7,p8=>k8,p9=>k9,pa=>ka)
   if (len(p1)/=3) print *,201
   if (len(p2)/=3) print *,202
   if (len(p3)/=3) print *,203
   if (len(p4)/=3) print *,204
   if (len(p5)/=3) print *,205
   if (len(p7)/=3) print *,206
   if (p1/='123') print *,301
   if (any(p2/='123')) print *,302
   if (any(p3/='123')) print *,303
   if (any(p4/='123')) print *,304
   if (any(p5/='123')) print *,305
   if (any(p6/='123')) print *,306
   if (any(p7/='123')) print *,307
   if (any(p8/= 1234)) print *,308
   if (any(p9/= 1234)) print *,309
   if (any(pa/= 1234)) print *,310
   if (any(ubound(p2)/=[3,4]))  print *,402
   if (any(ubound(p3)/=[3,4]))  print *,403
   if (any(ubound(p4)/=[3,4]))  print *,404
   if (any(ubound(p5)/=[3,4]))  print *,405
   if (any(ubound(p6)/=[3,4]))  print *,406
   if (any(ubound(p7)/=[3,4]))  print *,407
   if (any(ubound(p8)/=[3,4]))  print *,408
   if (any(ubound(pa)/=[3,4]))  print *,409
 end associate
end subroutine
subroutine s1
n1=3
n2=3
n3=4
call s2(n1,n2,n3)
end subroutine
end
use m1
call s1
print *,'pass'
end
