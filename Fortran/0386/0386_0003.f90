integer(8),parameter::ii(3)=(/2147483649_8,-2147483649_8,-10_8/)
integer(8),parameter::jj(3)=(/4_2,8_2,10_2/)
integer(8),parameter::i81(3)=int8(ii)
integer(8),parameter::i82(3)=int8(jj)
integer(8),parameter::i81k(3)=kind(int8(ii))
integer(8),parameter::i82k(3)=kind(int8(jj))
if ( ii(1) == i81(1) .and. jj(1) == i82(1) .and. &
     ii(2) == i81(2) .and. jj(2) == i82(2) .and. &
     ii(3) == i81(3) .and. jj(3) == i82(3) .and. &
     i81k(1) == 8 .and. i82k(1) == 8 .and. &
     i81k(2) == 8 .and. i82k(2) == 8 .and. &
     i81k(3) == 8 .and. i82k(3) == 8 ) then
  print *,'pass'
else
  print *,i81,i82
  print *,i81k,i82k
endif
end
