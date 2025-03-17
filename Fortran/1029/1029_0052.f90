  complex c1,c2,c3

  c1=(1.0,1.0)
  c2=(2.0,2.0)
  c3=(3.0,3.0)
  n=0
  if ( (imag(c1).eq.1.0.and.real(c1).eq.1.0) .or. &
       (real(c1).eq.0.0.and.imag(c1).eq.0.0) ) then
    n=n+1
  endif

  if ( c1.eq.(1.0,1.0) .and. &
       c2.eq.(2.0,2.0) .and. &
       c1.eq.c3-c2      ) then
    n=n+1
  endif

  if ( c1.eq.(1.0,1.0) ) then
    if ( c2.eq.(2.0,2.0) ) then
      if ( c3.eq.(3.0,3.0) ) then
        if ( c3.eq.abs(c1-c2)) then
          n=n+1
        endif
      endif
    endif
  endif

 print *,'pass'
end
