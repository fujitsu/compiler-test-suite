subroutine s161
  integer*1 c1,c2,c3,c4
#if defined(__x86_64)
  real( 8)::r161,r162,r163,r164
#else
  real(16)::r161,r162,r163,r164
#endif
  common /xmn1/ c1,r161
  common /xmn2/ c2,r162
  common /xmn3/ c3,r163
  common /xmn4/ c4,r164
  bind(c)::/xmn3/,/xmn4/
  write(91,*) 'r161=',mod(loc(r161),16)
  write(91,*) 'r162=',mod(loc(r162),16)
  write(91,*) 'r163=',mod(loc(r163),16)
  write(91,*) 'r164=',mod(loc(r164),16)
end
subroutine s162
  integer*1 c1,c2,c3,c4
#if defined(__x86_64)
  complex( 8)::r161,r162,r163,r164
#else
  complex(16)::r161,r162,r163,r164
#endif
  common /ymn1/ c1,r161
  common /ymn2/ c2,r162
  common /ymn3/ c3,r163
  common /ymn4/ c4,r164
  bind(c)::/ymn3/,/ymn4/
  write(92,*) 'c161=',mod(loc(r161),16)
  write(92,*) 'c162=',mod(loc(r162),16)
  write(92,*) 'c163=',mod(loc(r163),16)
  write(92,*) 'c164=',mod(loc(r164),16)
end
subroutine s81
  integer*1 c1,c2,c3,c4
  real(8)::r161,r162,r163,r164
  common /wmn1/ c1,r161
  common /wmn2/ c2,r162
  common /wmn3/ c3,r163
  common /wmn4/ c4,r164
  bind(c)::/wmn3/,/wmn4/
  write(93,*) 'r81=',mod(loc(r161),16)
  write(93,*) 'r82=',mod(loc(r162),16)
  write(93,*) 'r83=',mod(loc(r163),16)
  write(93,*) 'r84=',mod(loc(r164),16)
end
subroutine s82
  integer*1 c1,c2,c3,c4
  complex(8)::r161,r162,r163,r164
  common /zmn1/ c1,r161
  common /zmn2/ c2,r162
  common /zmn3/ c3,r163
  common /zmn4/ c4,r164
  bind(c)::/zmn3/,/zmn4/
  write(94,*) 'c81=',mod(loc(r161),16)
  write(94,*) 'c82=',mod(loc(r162),16)
  write(94,*) 'c83=',mod(loc(r163),16)
  write(94,*) 'c84=',mod(loc(r164),16)
end
call s161
call s162
call s81
call s82
print *,'pass'
end
