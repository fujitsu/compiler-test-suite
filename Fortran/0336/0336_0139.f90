real*8 area(1,1,1,1),pos
integer*8 da,dy/4332/,dm/4332/
logical*4 fa
parameter (fa=.false.)
pointer ( h, area )
pos=0.0
if ( .not..false. ) then
  da = dy-dm
  if ( .not.fa.or..false. ) then
    h=loc(pos)
    print *,'now loc'
  else
    print *,'NG'
  endif
endif
print *,area,da
stop
end
