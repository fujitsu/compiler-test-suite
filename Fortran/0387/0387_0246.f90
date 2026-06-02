interface
 function func1(a,b,c) result(r)
  integer a
  logical b
  character c
  integer r
 end function
 subroutine sub1(a,b,c)
  integer a
  logical b
  character c
 end subroutine
end interface

procedure(func1),pointer :: pfp
procedure(sub1),pointer :: psp
integer i
integer :: a=1
logical :: b
character :: c='c'
pfp=>func1
psp=>sub1
i = pfp(a=a,b=b,c=c)
i = pfp(a,b=b,c=c)
i = pfp(a,b,c=c)
i = pfp(c=c,b=b,a=a)
i = func1(c=c,b=b,a=a)
if (i.ne.6) print *,'fail'

call psp(a=a,b=b,c=c)
call psp(a,b=b,c=c)
call psp(a,b,c=c)
call psp(c=c,b=b,a=a)
call sub1(c=c,b=b,a=a)

print *,'pass'
end

function func1(a,b,c) result(r)
 integer a
 logical b
 character c
 integer r
 r = a+kind(b)+kind(c)
end function

subroutine sub1(a,b,c)
 integer a
 logical b
 character c
 integer r
 r = a+kind(b)+kind(c)
 if (r.ne.6) print *,'fail'
end subroutine
