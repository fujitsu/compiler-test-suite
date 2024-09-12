call ss0
call ss1
print *,'pass'
contains
subroutine ss0
integer(1),parameter::pi1=1_1
integer(2),parameter::pi2=1_2
integer(4),parameter::pi4=1_4
integer(8),parameter::pi8=1_8
real(4),parameter::pr=1.0
real(8),parameter::pd=1.0d0
real(16),parameter::pq=1.0q0
complex(4),parameter::pc=(1.0,1.0)
complex(8),parameter::pcd=(1.0d0,1.0d0)
complex(16),parameter::pcq=(1.0q0,1.0q0)
logical(1),parameter::pl1=.true._1
logical(2),parameter::pl2=.true._2
logical(4),parameter::pl4=.true._4
logical(8),parameter::pl8=.true._8
character(1),parameter::pch='a'
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
character(1)::ch
if(sizeof(pi1)/=sizeof(1_1)) print *,'err1'
if(sizeof(pi2)/=sizeof(1_2)) print *,'err2'
if(sizeof(pi4)/=sizeof(1_4)) print *,'err3'
if(sizeof(pi8)/=sizeof(1_8)) print *,'err4'
if(sizeof(pi1)/=sizeof(i1)) print *,'err5'
if(sizeof(pi2)/=sizeof(i2)) print *,'err6'
if(sizeof(pi4)/=sizeof(i4)) print *,'err7'
if(sizeof(pi8)/=sizeof(i8)) print *,'err8'
if(sizeof(pr)/=sizeof(1.0)) print *,'err9'
if(sizeof(pd)/=sizeof(1.0d0)) print *,'err10'
if(sizeof(pq)/=sizeof(1.0q0)) print *,'err11'
if(sizeof(pr)/=sizeof(r)) print *,'err12'
if(sizeof(pd)/=sizeof(d)) print *,'err13'
if(sizeof(pq)/=sizeof(q)) print *,'err14'
if(sizeof(pc)/=sizeof((1.0,1.0))) print *,'err15'
if(sizeof(pcd)/=sizeof((1.0d0,1.0d0))) print *,'err16'
if(sizeof(pcq)/=sizeof((1.0q0,1.0q0))) print *,'err17'
if(sizeof(pc)/=sizeof(c)) print *,'err18'
if(sizeof(pcd)/=sizeof(cd)) print *,'err19'
if(sizeof(pcq)/=sizeof(cq)) print *,'err20'
if(sizeof(pl1)/=sizeof(.true._1)) print *,'err21'
if(sizeof(pl2)/=sizeof(.true._2)) print *,'err22'
if(sizeof(pl4)/=sizeof(.true._4)) print *,'err23'
if(sizeof(pl8)/=sizeof(.true._8)) print *,'err24'
if(sizeof(pl1)/=sizeof(l1)) print *,'err25'
if(sizeof(pl2)/=sizeof(l2)) print *,'err26'
if(sizeof(pl4)/=sizeof(l4)) print *,'err27'
if(sizeof(pl8)/=sizeof(l8)) print *,'err28'
if(sizeof(pch)/=sizeof(ch)) print *,'err29'
if(sizeof(pch(1:1))/=sizeof(ch(1:1))) print *,'err30'
if(sizeof(pch(1:0))/=sizeof(ch(1:0))) print *,'err31'
end subroutine
subroutine ss1
integer(1),dimension(10),parameter::pi1=1_1
integer(2),dimension(10),parameter::pi2=1_2
integer(4),dimension(10),parameter::pi4=1_4
integer(8),dimension(10),parameter::pi8=1_8
real(4),dimension(10),parameter::pr=1.0
real(8),dimension(10),parameter::pd=1.0d0
real(16),dimension(10),parameter::pq=1.0q0
complex(4),dimension(10),parameter::pc=(1.0,1.0)
complex(8),dimension(10),parameter::pcd=(1.0d0,1.0d0)
complex(16),dimension(10),parameter::pcq=(1.0q0,1.0q0)
logical(1),dimension(10),parameter::pl1=.true._1
logical(2),dimension(10),parameter::pl2=.true._2
logical(4),dimension(10),parameter::pl4=.true._4
logical(8),dimension(10),parameter::pl8=.true._8
character(1),dimension(10),parameter::pch='a'
integer(1),dimension(10)::i1
integer(2),dimension(10)::i2
integer(4),dimension(10)::i4
integer(8),dimension(10)::i8
real(4),dimension(10)::r
real(8),dimension(10)::d
real(16),dimension(10)::q
complex(4),dimension(10)::c
complex(8),dimension(10)::cd
complex(16),dimension(10)::cq
logical(1),dimension(10)::l1
logical(2),dimension(10)::l2
logical(4),dimension(10)::l4
logical(8),dimension(10)::l8
character(1),dimension(10)::ch
if(sizeof(pi1)/=sizeof(i1)) print *,'err1'
if(sizeof(pi2)/=sizeof(i2)) print *,'err2'
if(sizeof(pi4)/=sizeof(i4)) print *,'err3'
if(sizeof(pi8)/=sizeof(i8)) print *,'err4'
if(sizeof(pr)/=sizeof(r)) print *,'err5'
if(sizeof(pd)/=sizeof(d)) print *,'err6'
if(sizeof(pq)/=sizeof(q)) print *,'err7'
if(sizeof(pc)/=sizeof(c)) print *,'err8'
if(sizeof(pcd)/=sizeof(cd)) print *,'err9'
if(sizeof(pcq)/=sizeof(cq)) print *,'err10'
if(sizeof(pl1)/=sizeof(l1)) print *,'err11'
if(sizeof(pl2)/=sizeof(l2)) print *,'err12'
if(sizeof(pl4)/=sizeof(l4)) print *,'err13'
if(sizeof(pl8)/=sizeof(l8)) print *,'err14'
if(sizeof(pch)/=sizeof(ch)) print *,'err15'
if(sizeof(pch(1)(1:1))/=sizeof(ch(1)(1:1))) print *,'err16'
if(sizeof(pch(1)(1:0))/=sizeof(ch(1)(1:0))) print *,'err17'
end subroutine
end
