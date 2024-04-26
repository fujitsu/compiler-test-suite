module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
  end type
  type x1
     integer:: x11 
     type(x0):: x12
  end type
  type x2
     integer:: x21 
     integer,allocatable:: x22(:) 
     type(x1):: x23
  end type
end
subroutine s1
use m1
type (x2)::v1,v2

allocate(v1%x22(2))
allocate(v1%x23%x12%x02(3))
v1%x21=11
v1%x22=(/1,2/)
v1%x23%x11=21
v1%x23%x12%x01=31
v1%x23%x12%x02=(/3,4,5/)
if (v1%x21/=11) print *,101
if (v1%x22(1)/=1) print *,102
if (v1%x22(2)/=2) print *,103
if (v1%x23%x11/=21) print *,104
if (v1%x23%x12%x01/=31) print *,105
if (v1%x23%x12%x02(1)/=3) print *,106
if (v1%x23%x12%x02(2)/=4) print *,107
if (v1%x23%x12%x02(3)/=5) print *,108
if (any(ubound(v1%x22)/=2)) print *,109
if (any(ubound(v1%x23%x12%x02)/=3)) print *,110
!
allocate(v2%x22(3))
allocate(v2%x23%x12%x02(4))
v2%x21=111
v2%x22=(/101,102,103/)
v2%x23%x11=121
v2%x23%x12%x01=131
v2%x23%x12%x02=(/3,4,5,6/)+100
if (v2%x21/=11+100) print *,901
if (v2%x22(1)/=1+100) print *,902
if (v2%x22(2)/=2+100) print *,903
if (v2%x22(3)/=3+100) print *,911
if (v2%x23%x11/=21+100) print *,904
if (v2%x23%x12%x01/=31+100) print *,905
if (v2%x23%x12%x02(1)/=3+100) print *,906
if (v2%x23%x12%x02(2)/=4+100) print *,907
if (v2%x23%x12%x02(3)/=5+100) print *,908
if (v2%x23%x12%x02(4)/=6+100) print *,912
if (any(ubound(v2%x22)/=3)) print *,909
if (any(ubound(v2%x23%x12%x02)/=4)) print *,910
v1=v2
if (v1%x21/=11+100) print *,8701
if (v1%x22(1)/=1+100) print *,8702
if (v1%x22(2)/=2+100) print *,8703
if (v1%x22(3)/=3+100) print *,8711
if (v1%x23%x11/=21+100) print *,8704
if (v1%x23%x12%x01/=31+100) print *,8705
if (v1%x23%x12%x02(1)/=3+100) print *,8706
if (v1%x23%x12%x02(2)/=4+100) print *,8707
if (v1%x23%x12%x02(3)/=5+100) print *,8708
if (v1%x23%x12%x02(4)/=6+100) print *,8712
if (any(ubound(v1%x22)/=3)) print *,8709
if (any(ubound(v1%x23%x12%x02)/=4)) print *,8710
!
if (v2%x21/=11+100) print *,8801
if (v2%x22(1)/=1+100) print *,8802
if (v2%x22(2)/=2+100) print *,8803
if (v2%x22(3)/=3+100) print *,8811
if (v2%x23%x11/=21+100) print *,8804
if (v2%x23%x12%x01/=31+100) print *,8805
if (v2%x23%x12%x02(1)/=3+100) print *,8806
if (v2%x23%x12%x02(2)/=4+100) print *,8807
if (v2%x23%x12%x02(3)/=5+100) print *,8808
if (v2%x23%x12%x02(4)/=6+100) print *,8812
if (any(ubound(v2%x22)/=3)) print *,8809
if (any(ubound(v2%x23%x12%x02)/=4)) print *,8810
end
call s1
print *,'pass'
end
