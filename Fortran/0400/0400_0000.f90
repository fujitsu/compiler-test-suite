subroutine s(d1,d2)
interface 
  subroutine d1(k)
  end subroutine
  subroutine d2(r)
  end subroutine
  subroutine s3(c)
   character c
  end subroutine
end interface

procedure(s3),pointer::p1

interface gen
  procedure  d1,d2,p1
end interface

p1=> s3
call gen(1)
call gen(2.0)
call gen('c')
end

common //n
interface 
  subroutine s1(k)
  end subroutine
  subroutine s2(r)
  end subroutine
end interface
call s(s1,s2)
if (n/=6)print *,101
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
subroutine s3(c)
common //n
character(*) c
if (c/='c')print *,401
n=n+3
end
