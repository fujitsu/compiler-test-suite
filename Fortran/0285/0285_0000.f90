integer::i=3,is

associate(aa=>i)
 open(1)
 write(1,'(I2)') 10,12,14,16
 rewind(1)
 read (1, * , IOSTAT=aa) is
end associate

if(is .eq. 10) is = 0
if(i .eq. 0 .and. is .eq. 0) print*,'pass'
end
