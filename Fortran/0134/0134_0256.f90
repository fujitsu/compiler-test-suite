subroutine t(a)
  integer a(2,3)
 do 10 k1=1,2
   do 10 k2=1,3
    a(k1,k2)=1
10 continue
end
subroutine s(a,j2,j3)
  integer a(2,3)
 do 10 k1=1,j2
   do 10 k2=1,j3
    a(k1,k2)=1
10 continue
end
  integer a(2,3)
a=0
call t(a)
  if(any(a/=1))print *,101
a=0
call s(a,2,3)
  if(any(a/=1))print *,101
  print *,'pass'
end

