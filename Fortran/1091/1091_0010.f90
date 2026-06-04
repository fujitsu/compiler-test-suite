 subroutine sub4()
n=3
associate(nn=>n)
block
character(100),dimension(100)::  a     (2)*(nn),&
  b     (nn)*(nn),&
  c     (nn)*(2 ),&
  d     (2 )*(2 ),&
  e     (2)*(nn),&
  f     (nn)*(nn),&
  g     (nn)*(2 ),&
  h     (2 )*(2 )
if (len(a)/=3) print *,2001
if (len(b)/=3) print *,2002
if (len(c)/=2) print *,2003
if (len(d)/=2) print *,2004
if (len(e)/=3) print *,2005
if (len(f)/=3) print *,2006
if (len(g)/=2) print *,2007
if (len(h)/=2) print *,2008
if (size(a)/=2) print *,3001
if (size(b)/=3) print *,3002
if (size(c)/=3) print *,3003
if (size(d)/=2) print *,3004
if (size(e)/=2) print *,3005
if (size(f)/=3) print *,3006
if (size(g)/=3) print *,3007
if (size(h)/=2) print *,3008
end block
end associate

 end
 subroutine sub3()
n=3
associate(nn=>n)
block
character(100),dimension(nn+100)::  a     (2)*(nn),&
  b     (nn)*(nn),&
  c     (nn)*(2 ),&
  d     (2 )*(2 ),&
  e     (2)*(nn),&
  f     (nn)*(nn),&
  g     (nn)*(2 ),&
  h     (2 )*(2 )
if (len(a)/=3) print *,2001
if (len(b)/=3) print *,2002
if (len(c)/=2) print *,2003
if (len(d)/=2) print *,2004
if (len(e)/=3) print *,2005
if (len(f)/=3) print *,2006
if (len(g)/=2) print *,2007
if (len(h)/=2) print *,2008
if (size(a)/=2) print *,3001
if (size(b)/=3) print *,3002
if (size(c)/=3) print *,3003
if (size(d)/=2) print *,3004
if (size(e)/=2) print *,3005
if (size(f)/=3) print *,3006
if (size(g)/=3) print *,3007
if (size(h)/=2) print *,3008
end block
end associate

 end
 subroutine sub2()
n=3
associate(nn=>n)
block
character(nn+100),dimension(100)::  a     (2)*(nn),&
  b     (nn)*(nn),&
  c     (nn)*(2 ),&
  d     (2 )*(2 ),&
  e     (2)*(nn),&
  f     (nn)*(nn),&
  g     (nn)*(2 ),&
  h     (2 )*(2 )
if (len(a)/=3) print *,2001
if (len(b)/=3) print *,2002
if (len(c)/=2) print *,2003
if (len(d)/=2) print *,2004
if (len(e)/=3) print *,2005
if (len(f)/=3) print *,2006
if (len(g)/=2) print *,2007
if (len(h)/=2) print *,2008
if (size(a)/=2) print *,3001
if (size(b)/=3) print *,3002
if (size(c)/=3) print *,3003
if (size(d)/=2) print *,3004
if (size(e)/=2) print *,3005
if (size(f)/=3) print *,3006
if (size(g)/=3) print *,3007
if (size(h)/=2) print *,3008
end block
end associate

 end
 subroutine sub1()
n=3
associate(nn=>n)
block
character(100),dimension(nn)::  a     (2)*(nn),&
  b     (nn)*(nn),&
  c     (nn)*(2 ),&
  d     (2 )*(2 ),&
  e     (2)*(nn),&
  f     (nn)*(nn),&
  g     (nn)*(2 ),&
  h     (2 )*(2 )
if (len(a)/=3) print *,2001
if (len(b)/=3) print *,2002
if (len(c)/=2) print *,2003
if (len(d)/=2) print *,2004
if (len(e)/=3) print *,2005
if (len(f)/=3) print *,2006
if (len(g)/=2) print *,2007
if (len(h)/=2) print *,2008
if (size(a)/=2) print *,3001
if (size(b)/=3) print *,3002
if (size(c)/=3) print *,3003
if (size(d)/=2) print *,3004
if (size(e)/=2) print *,3005
if (size(f)/=3) print *,3006
if (size(g)/=3) print *,3007
if (size(h)/=2) print *,3008
end block
end associate

 end
 subroutine sub()
n=3
associate(nn=>n)
block
character(nn),dimension(nn)::  a     (2)*(nn),&
  b     (nn)*(nn),&
  c     (nn)*(2 ),&
  d     (2 )*(2 ),&
  e     (2)*(nn),&
  f     (nn)*(nn),&
  g     (nn)*(2 ),&
  h     (2 )*(2 )
if (len(a)/=3) print *,2001
if (len(b)/=3) print *,2002
if (len(c)/=2) print *,2003
if (len(d)/=2) print *,2004
if (len(e)/=3) print *,2005
if (len(f)/=3) print *,2006
if (len(g)/=2) print *,2007
if (len(h)/=2) print *,2008
if (size(a)/=2) print *,3001
if (size(b)/=3) print *,3002
if (size(c)/=3) print *,3003
if (size(d)/=2) print *,3004
if (size(e)/=2) print *,3005
if (size(f)/=3) print *,3006
if (size(g)/=3) print *,3007
if (size(h)/=2) print *,3008
end block
end associate

 end

call sub
call sub2
call sub3
call sub4

 print *,'sngg639r : pass'
 end

