 subroutine sub()
n=3
associate(nn=>n)
block
  character ,dimension((nn+100))::a*(nn)(2)
  character ,dimension((nn+100))::b*(nn)(nn)
  character ,dimension((nn+100))::c*(2 )(nn)
  character ,dimension((nn+100))::d*(2 )(2 )
  character(nn) ,dimension((nn+100))::e*(nn)(2)
  character(nn) ,dimension((nn+100))::f*(nn)(nn)
  character(nn) ,dimension((nn+100))::g*(2 )(nn)
  character(nn) ,dimension((nn+100))::h*(2 )(2 )
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

 print *,'sngg637r : pass'
 end

