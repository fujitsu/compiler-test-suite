call s1
call s2
print *,'pass'
end
subroutine s1
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
r=1.0_4
d=1.0_8
q=1.0_16
c=(1.0_4,0.0_4)
cd=(1.0_8,0.0_8)
cq=(1.0_16,0.0_16)
if(abs(acosh(cosh(1.0)))-1.0 > 0.00000001) print *,'err1'
if(abs(acosh(cosh(1.0_8)))-1.0_8 > 0.0000000000000001) print *,'err2'
if(abs(acosh(cosh(1.0_16)))-1.0_16 > 0.00000000000000000000000000000001) print *,'err3'
if(abs(acosh(cosh((1.0,0.0))))-abs((1.0,0.0))>0.00000001) print *,'err4'
if(abs(acosh(cosh((1.0_8,0.0_8))))-abs((1.0_8,0.0_8)) > 0.0000000000000001) print *,'err5'
if(abs(acosh(cosh((1.0_16,0.0_16))))-abs((1.0_16,0.0_16)) > 0.00000000000000000000000000000001) print *,'err6'
if(abs(acosh(cosh(r)))-r> 0.00000001) print *,'err11'
if(abs(acosh(cosh(d)))-d> 0.0000000000000001) print *,'err12'
if(abs(acosh(cosh(q)))-q>0.00000000000000000000000000000001) print *,'err13'
if(abs(acosh(cosh(c)))-abs(c)> 0.00000001) print *,'err14'
if(abs(acosh(cosh(cd)))-abs(cd)> 0.0000000000000001) print *,'err15'
if(abs(acosh(cosh(cq)))-abs(cq)>0.00000000000000000000000000000001) print *,'err16'
if(abs(acosh(x=cosh(r)))-r> 0.00000001) print *,'err111'
if(abs(acosh(x=cosh(d)))-d> 0.0000000000000001) print *,'err112'
if(abs(acosh(x=cosh(q)))-q>0.00000000000000000000000000000001) print *,'err113'
if(abs(acosh(x=cosh(c)))-abs(c)> 0.00000001) print *,'err114'
if(abs(acosh(x=cosh(cd)))-abs(cd)> 0.0000000000000001) print *,'err115'
if(abs(acosh(x=cosh(cq)))-abs(cq)>0.00000000000000000000000000000001) print *,'err116'
end

subroutine s2
real(4)::r(2)
real(8)::d(2)
real(16)::q(2)
complex(4)::c(2)
complex(8)::cd(2)
complex(16)::cq(2)
r=1.0_4
d=1.0_8
q=1.0_16
c=(1.0_4,0.0_4)
cd=(1.0_8,0.0_8)
cq=(1.0_16,0.0_16)
if(any(abs(acosh(cosh([1.0])))-[1.0]> [0.00000001])) print *,'err1'
if(any(abs(acosh(cosh([1.0_8])))-[1.0_8]>[0.0000000000000001])) print *,'err2'
if(any(abs(acosh(cosh([1.0_16])))-[1.0_16]>[0.00000000000000000000000000000001])) print *,'err3'
if(any(abs(acosh(cosh([(1.0,0.0)])))-abs([(1.0,0.0)])> [0.00000001])) print *,'err4'
if(any(abs(acosh(cosh([(1.0_8,0.0_8)])))-abs([(1.0_8,0.0_8)])>[0.0000000000000001])) print *,'err5'
if(any(abs(acosh(cosh([(1.0_16,0.0_16)])))-abs([(1.0_16,0.0_16)])>&
[0.00000000000000000000000000000001])) print *,'err6'
if(any(abs(acosh(cosh(r)))-r> [0.00000001,0.00000001])) print *,'err11'
if(any(abs(acosh(cosh(d)))-d>[0.0000000000000001,0.0000000000000001])) print *,'err12'
if(any(abs(acosh(cosh(q)))-q>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err13'
if(any(abs(acosh(cosh(c)))-abs(c)>[0.00000001,0.00000001])) print *,'err14'
if(any(abs(acosh(cosh(cd)))-abs(cd) > [0.0000000000000001,0.0000000000000001])) print *,'err15'
if(any(abs(acosh(cosh(cq)))-abs(cq)>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err16'
if(any(abs(acosh(x=cosh(r)))-r> [0.00000001,0.00000001])) print *,'err111'
if(any(abs(acosh(x=cosh(d)))-d>[0.0000000000000001,0.0000000000000001])) print *,'err112'
if(any(abs(acosh(x=cosh(q)))-q>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err113'
if(any(abs(acosh(x=cosh(x=c)))-abs(c)>[0.00000001,0.00000001])) print *,'err114'
if(any(abs(acosh(x=cosh(x=cd)))-abs(cd)>[0.0000000000000001,0.0000000000000001])) print *,'err115'
if(any(abs(acosh(x=cosh(x=cq)))-abs(cq)>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err116'
end
