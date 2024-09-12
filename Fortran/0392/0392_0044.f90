subroutine s1
integer :: a(1000),b(1000),c(1000)
a=[(k,k=1,1000)]
do concurrent( K=1:1000 )
  if (K==50) then
     write(1) a
  end if 
  b(k)=a(k)
  if (K==50) then
     rewind 1
  end if 
  if (K==50) then
     read(1) c
  end if 
end do
if (any(a/=[(k,k=1,1000)])) print *,101
if (any(b/=[(k,k=1,1000)])) print *,102
if (any(c/=[(k,k=1,1000)])) print *,103
end
call s1
print *,'pass'
end

