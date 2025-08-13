  program main
integer,parameter::lstring=20
character(len=lstring):: old
character(len=lstring):: new
integer::i
write(28,'(3(a1,1x))') 'a','c','e'
rewind(28)
read(28,'(a)') old
write(new,'(3(1x,a1))') 'b','d','f'
do i=1,len(new)
   select case(old(i:i))
   case(' ')
      old(i:i)= new(i:i)
   end select
end do
backspace(28)
write(28,*) old
rewind 28
read(28,'(a)') new
if (new/=' abcdef')print *,'error'
print *,'pass'
end program main
