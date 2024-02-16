real,parameter::abcdefghijklmnopqrstuvwxyzaabbccd=1.0
real,parameter::a___________________________________=2.0
complex::c=(abcdefghijklmnopqrstuvwxyzaabbccd,a___________________________________)
if ( real(c) == 1 ) then
  print *,'pass'
else
  print *,'ng',c
endif
end
