subroutine s
interface 
  subroutine s1(k)
  end subroutine
  subroutine s2(r)
  end subroutine
end interface

interface gen
  procedure  s1,s2
end interface

call gen(1)
call gen(2.0)
end

common //n
call s
if (n/=3)print *,101
print *,'pass'
end

subroutine s1(k)
common //n
if (k/=1)print *,201
n=1
end
subroutine s2(a)
common //n
if (a/=2)print *,301
n=n+2
end
