program main
integer*8 i8,j/-20/,k/20/
integer   kkk/0/
do i8=j,k
  kkk=kkk+i8
end do
if (int(kkk)==0 ) then
  print *,"OK"
else
  print *,"NG",int(kkk)
endif
end
