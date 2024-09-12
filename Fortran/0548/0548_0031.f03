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
if(abs(acos(cos(1.0)))-1.0>0.00000001) print *,'err1'
if(abs(acos(cos(1.0_8))) -1.0_8> 0.0000000000000001) print *,'err2'
if(abs(acos(cos(1.0_16)))-1.0_16> 0.00000000000000000000000000000001) print *,'err3'
if(abs(acos(cos((1.0,0.0))))-abs((1.0,0.0)) > 0.00000001) print *,'err4'
if(abs(acos(cos((1.0_8,0.0_8))))-abs((1.0_8,0.0_8))> 0.0000000000000001) print *,'err5'
if(abs(acos(cos((1.0_16,0.0_16))))-abs((1.0_16,0.0_16))> 0.00000000000000000000000000000001) print *,'err6'
if(abs(acos(cos(r)))-r>0.00000001) print *,'err11'
if(abs(acos(cos(d)))-d> 0.0000000000000001) print *,'err12'
if(abs(acos(cos(q)))-q> 0.00000000000000000000000000000001) print *,'err13'
if(abs(acos(cos(c)))-abs(c)>0.00000001) print *,'err14'
if(abs(acos(cos(cd)))-abs(cd)> 0.0000000000000001) print *,'err15'
if(abs(acos(cos(cq)))-abs(cq)> 0.00000000000000000000000000000001) print *,'err16'
if(abs(acos(x=cos(r)))-r>0.00000001) print *,'err111'
if(abs(acos(x=cos(d)))-d> 0.0000000000000001) print *,'err112'
if(abs(acos(x=cos(q)))-q> 0.00000000000000000000000000000001) print *,'err113'
if(abs(acos(x=cos(c)))-abs(c)>0.00000001) print *,'err114'
if(abs(acos(x=cos(cd)))-abs(cd)> 0.0000000000000001) print *,'err115'
if(abs(acos(x=cos(cq)))-abs(cq)> 0.00000000000000000000000000000001) print *,'err116'
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
if(any(abs(acos(cos([1.0])))-[1.0]> [0.00000001])) print *,'err1'
if(any(abs(acos(cos([1.0_8])))-[1.0_8]>[0.0000000000000001])) print *,'err2'
if(any(abs(acos(cos([1.0_16])))-[1.0_16]>[0.00000000000000000000000000000001])) print *,'err3'
if(any(abs(acos(cos([(1.0,0.0)])))-abs([(1.0,0.0)])> [0.00000001])) print *,'err4'
if(any(abs(acos(cos([(1.0_8,0.0_8)])))-abs([(1.0_8,0.0_8)])>[0.0000000000000001])) print *,'err5'
if(any(abs(acos(cos([(1.0_16,0.0_16)])))-abs([(1.0_16,0.0_16)])>[0.00000000000000000000000000000001])) print *,'err6'
if(any(abs(acos(cos(r)))-r> [0.00000001,0.00000001])) print *,'err11'
if(any(abs(acos(cos(d)))-d>[0.0000000000000001,0.0000000000000001])) print *,'err12'
if(any(abs(acos(cos(q)))-q>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err13'
if(any(abs(acos(cos(c)))-abs(c)> [0.00000001,0.00000001])) print *,'err14'
if(any(abs(acos(cos(cd)))-abs(cd)>[0.0000000000000001,0.0000000000000001])) print *,'err15'
if(any(abs(acos(cos(cq)))-abs(cq)>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err16'
if(any(abs(acos(x=cos(r)))-r> [0.00000001,0.00000001])) print *,'err111'
if(any(abs(acos(x=cos(d)))-d>[0.0000000000000001,0.0000000000000001])) print *,'err112'
if(any(abs(acos(x=cos(q)))-q>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err113'
if(any(abs(acos(x=cos(x=c)))-abs(c)> [0.00000001,0.00000001])) print *,'err114'
if(any(abs(acos(x=cos(x=cd)))-abs(cd)>[0.0000000000000001,0.0000000000000001])) print *,'err115'
if(any(abs(acos(x=cos(x=cq)))-abs(cq)>[0.00000000000000000000000000000001,0.00000000000000000000000000000001])) print *,'err116'
end
