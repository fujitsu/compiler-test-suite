!
program main
integer*8 i8,j/-20/,k/20/
integer   kei/0/
do i8=j,k
  kei=kei+i8
end do
if (int(kei)==0 ) then
  print *,"OK"
else
  print *,"NG",int(kei)
endif
end
