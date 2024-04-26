call sub_div_chk_i4
call sub_div_chk_i2
call sub_div_chk_i1
stop
end
subroutine sub_div_chk_i1
real*8 area(1,1,1,1),pos
integer*1 da,dy/3/,dm/12/
logical*4 fa
parameter (fa=.false.)
pointer ( h, area )
pos=0.0
if ( .not..false. ) then
  da = dy/dm
  if ( .not.fa.or..false. ) then
    h=loc(pos)
    print *,'now loc'
  else
    print *,'NG'
  endif
endif
print *,area,da
end
subroutine sub_div_chk_i2
integer*2 da,dy/23/,dm/4332/
logical*4 fa
parameter (fa=.false.)
pointer ( h, area )
pos=0.0
if ( .not..false. ) then
  da = dy/dm
  if ( .not.fa.or..false. ) then
    h=loc(pos)
    print *,'now loc'
  else
    print *,'NG'
  endif
endif
print *,area,da
end
subroutine sub_div_chk_i4
integer*4 da,dy/23/,dm/4332/
logical*4 fa
parameter (fa=.false.)
pointer ( h, area )
pos=0.0
if ( .not..false. ) then
  da = dy/dm
  if ( .not.fa.or..false. ) then
    h=loc(pos)
    print *,'now loc'
  else
    print *,'NG'
  endif
endif
print *,area,da
end
