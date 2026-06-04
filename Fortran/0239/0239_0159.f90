module m1
contains
subroutine s2
character(3)::k1
character(3)::k2(3)
character(3)::k3(3)
k1='1234'
k2='1234'
k3='1234'
i=2
k=2
 associate(p=>k1(i:),q=>k2(k),w=>k3(k)(i:))
   if (len(p)/=2) print *,201
   if (len(p(k:))/=1) print *,202
   if (len(q)/=3) print *,203
   if (len(q(:))/=3) print *,204
   p='abc'
   if (k1/='1ab') print *,205
   p(k:)='def'
   if (k1/='1ad') print *,206
   q='abc'
   if (k2(2)/='abc') print *,207
   q(k:)='efg'
   if (k2(2)/='aef') print *,208
   w='abc'
   if (k3(2)/='1ab') print *,209
   w(k:)='efg'
   if (k3(2)/='1ae') print *,209
 end associate

k1='1234'
k2='1234'
k3='1234'
 associate(p=>k1(k:),q=>k2(k:),w=>k3(k:)(k:))
   if (len(p)/=2) print *,301
   if (len(p(k:))/=1) print *,302
   if (len(q)/=3) print *,303
   if (len(q(:))/=3) print *,304
   if (any(ubound(q)/=2)) print *,305
   if (any(ubound(q(k:))/=1)) print *,306
   if (len(q(:)(:))/=3) print *,307
   if (len(q(:)(k:))/=2) print *,308
   if (any(ubound(q(k:)(:))/=1)) print *,307
   if (len(w)/=2) print *,308
   if (len(w(:))/=2) print *,309
   if (any(ubound(w)/=2)) print *,310
   if (any(ubound(w(k:))/=1)) print *,311
   if (len(w(:)(:))/=2) print *,312
   if (len(w(:)(k:))/=1) print *,313
   q='abcd'
   if (k2(1)/='123') print *,401
   if (k2(2)/='abc') print *,402
   if (k2(3)/='abc') print *,403
   q(k:)='efg'
   if (k2(1)/='123') print *,411
   if (k2(2)/='abc') print *,412
   if (k2(3)/='efg') print *,413
   q(k:)(k:)='hik'
   if (k2(1)/='123') print *,421
   if (k2(2)/='abc') print *,422
   if (k2(3)/='ehi') print *,423
   w='abcd'
   if (k3(1)/='123') print *,501
   if (k3(2)/='1ab') print *,502
   if (k3(3)/='1ab') print *,503
   w(k:)='efg'
   if (k3(1)/='123') print *,511
   if (k3(2)/='1ab') print *,512
   if (k3(3)/='1ef') print *,513
   w(k:)(k:)='hik'
   if (k3(1)/='123') print *,521
   if (k3(2)/='1ab') print *,522
   if (k3(3)/='1eh') print *,523
 end associate
k1='1234'
k2='1234'
k3='1234'
 associate(q=>k2(k:),w=>k3(k:)(k:))
    q(k)='abc'
   if (k2(1)/='123') print *,1401
   if (k2(2)/='123') print *,1402
   if (k2(3)/='abc') print *,1403
    q(k)(k:)='efg'
   if (k2(1)/='123') print *,2401
   if (k2(2)/='123') print *,2402
   if (k2(3)/='aef') print *,2403
    w(k)='abc'
   if (k3(1)/='123') print *,3401
   if (k3(2)/='123') print *,3402
   if (k3(3)/='1ab') print *,3403
    w(k)(k:)='efg'
   if (k3(1)/='123') print *,4401
   if (k3(2)/='123') print *,4402
   if (k3(3)/='1ae') print *,4403
 end associate
end subroutine
subroutine s1
call s2
end subroutine
end
use m1
call s1
print *,'pass'
end
