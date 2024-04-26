module m1
contains
subroutine s2(i)
real(8)::k1
character(i)::k2
complex k3
character(:),pointer::k4
k1=1.0
k2='1234'
k3=(2,3)
allocate(character(3)::k4,stat=ks)
if (ks/=0) print *,101
k4='56789'

associate(p=>k1)
 if (kind(p)/=8) print *,201
 associate(p=>k2)
   if (len(p)/=3) print *,202
   associate(p=>k3)
     if (kind(p)/=4) print *,203
     associate(p=>k4)
       if (len(p)/=3) print *,204
     end associate
     associate(p=>k4)
       if (p/='567') print *,205
     end associate
     if (p/=(2,3)) print *,206
   end associate
   if (p/='123') print *,207
 end associate
 if (p/=1) print *,208
end associate
end subroutine
subroutine s1
k=3
call s2(k)
end subroutine
end
use m1
call s1
print *,'pass'
end


