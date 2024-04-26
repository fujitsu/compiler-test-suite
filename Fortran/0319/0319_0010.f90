type nn
  logical(kind=1)::a,v,m
end type nn
type(nn) ::nn_s=nn(.false.,.true.,.false.)
logical*4 n_l
n_l=.TRUE._4
if ( nn_s%V.or.n_l ) then
  print *,'th'
  goto 10
endif
if ( nn_s%V.or.n_l ) then
  print *,'ng'
endif
10 continue
stop
end
