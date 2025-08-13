integer,allocatable,dimension(:,:)::POP
integer::x(25)
allocate(POP(5,5))
POP=reshape((/(i,i=1,25)/),(/5,5/))
do N=1,5
POP(1:N,1:N) = POP(1:N,1:N) + TRANSPOSE( POP(1:N,1:N) )
end do
write(13,*) POP
rewind 13
read(13,*) x
if(any(x/=(/32,64,56,40,26,64,112,80,52,32,56,80,104,64,38,40,52,64,76,44,26,32,38,44,50/)))write(6,*) "NG"
print *,'pass'
end
