  program main
integer,parameter::lstring=20
character(len=lstring):: old
character(len=lstring):: new
integer::i
write(10,'(3(a1,1x))') 'a','c','e'
rewind(10)
read(10,'(a)') old
write(new,'(3(1x,a1))') 'b','d','f'
do i=1,len(new)
   select case(old(i:i))
   case(' ')
      old(i:i)= new(i:i)
   end select
end do
backspace(10)
write(10,*) old
rewind 10
read(10,'(a)') new
if (new/=' abcdef')print *,'error'
print *,'pass'
end program main
