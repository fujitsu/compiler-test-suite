subroutine s (WANTZ,Na)
logical WANTZ
integer LWMIN,LRWMIN, N,Na
N=Na

IF ( WANTZ ) THEN
  LWMIN  = N+2
  LRWMIN = N+2 - 1
ELSE
  LWMIN  = 0
  LRWMIN = 0
END IF

if ( (LWMIN+LRWMIN).ne.7 ) then
  print *,'ng'
else
  print *,'ok'
endif
end

call s( .true., 2 )
end
