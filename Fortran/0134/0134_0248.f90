subroutine s161
  integer*1 c1,c2,c3,c4
  real(16)::r161,r162,r163,r164
  common /xmn1/ c1,r161
  common /xmn2/ c2,r162
  common /xmn3/ c3,r163
  common /xmn4/ c4,r164
  write(101,*) 'r161=',mod(loc(r161),16)
  write(101,*) 'r162=',mod(loc(r162),16)
  write(101,*) 'r163=',mod(loc(r163),16)
  write(101,*) 'r164=',mod(loc(r164),16)
end
subroutine s162
  integer*1 c1,c2,c3,c4
  complex(16)::r161,r162,r163,r164
  common /ymn1/ c1,r161
  common /ymn2/ c2,r162
  common /ymn3/ c3,r163
  common /ymn4/ c4,r164
  write(102,*) 'c161=',mod(loc(r161),16)
  write(102,*) 'c162=',mod(loc(r162),16)
  write(102,*) 'c163=',mod(loc(r163),16)
  write(102,*) 'c164=',mod(loc(r164),16)
end
subroutine s81
  integer*1 c1,c2,c3,c4
  real(8)::r161,r162,r163,r164
  common /wmn1/ c1,r161
  common /wmn2/ c2,r162
  common /wmn3/ c3,r163
  common /wmn4/ c4,r164
  write(103,*) 'r81=',mod(loc(r161),16)
  write(103,*) 'r82=',mod(loc(r162),16)
  write(103,*) 'r83=',mod(loc(r163),16)
  write(103,*) 'r84=',mod(loc(r164),16)
end
subroutine s82
  integer*1 c1,c2,c3,c4
  complex(8)::r161,r162,r163,r164
  common /zmn1/ c1,r161
  common /zmn2/ c2,r162
  common /zmn3/ c3,r163
  common /zmn4/ c4,r164
  write(104,*) 'c81=',mod(loc(r161),16)
  write(104,*) 'c82=',mod(loc(r162),16)
  write(104,*) 'c83=',mod(loc(r163),16)
  write(104,*) 'c84=',mod(loc(r164),16)
end
call s161
call s162
call s81
call s82
print *,'pass'
end
