subroutine s
!!!! implicit none
integer::ia_1=0,ia_2=0,ia_3=0,ia_4=0
  block
integer::ia_1,ia_2,ia_3,ia_4
ia_1=1
ia_2=3
ia_3=2
ia_4=4
if (ia_1/=1) print *,1001
if (ia_3/=2) print *,1002
if (ia_2/=3) print *,1003
if (ia_4/=4) print *,1004
end  block
if (ia_1/=0) print *,2001
if (ia_3/=0) print *,2002
if (ia_2/=0) print *,2003
if (ia_4/=0) print *,2004
end
call s
print *,'pass'
end
