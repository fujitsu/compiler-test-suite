subroutine s1
common n
interface
 subroutine external(i)
common n
 end subroutine
 subroutine external2(r)
common n
 end subroutine
end interface
interface gen
  procedure external2,external
end interface
n=0
call gen(1)
if (n/=10) print *,101,n
call gen(1.0)
if (n/=20) print *,102,n
end
  subroutine external(i)
   common n
   if (i/=1) print *,301
   n=10
  end subroutine

call s1
print *,'pass'
end
  subroutine external2(r)
common n
   if (r/=1.0) print *,201
   n=20
  end subroutine


