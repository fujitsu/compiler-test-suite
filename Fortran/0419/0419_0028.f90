call s1
print *,'pass'
end
subroutine s1
type t
integer(1),allocatable::a1(:)
integer(1),allocatable::b1
integer(2),allocatable::a2(:)
integer(2),allocatable::b2
integer(4),allocatable::a3(:)
integer(4),allocatable::b3
integer(8),allocatable::a4(:)
integer(8),allocatable::b4
end type
type(t)::ttt
ttt%a1=[huge(1_1)]
ttt%b1=huge(1_1)
ttt%a2=[huge(1_2)]
ttt%b2=huge(1_2)
ttt%a3=[huge(1_4)]
ttt%b3=huge(1_4)
ttt%a4=[huge(1_8)]
ttt%b4=huge(1_8)
if(ttt%a1(1)/=ttt%b1) print *,'err1'
if(ttt%a2(1)/=ttt%b2) print *,'err2'
if(ttt%a3(1)/=ttt%b3) print *,'err3'
if(ttt%a4(1)/=ttt%b4) print *,'err4'
end
