do i=1,15
 call sub('123456789abcdef'(:i))
end do
rewind 1
call chk
print *,'pass'
end
subroutine sub(a)
character(len=*) a
write(1,*) len(a),a
end
subroutine chk
character*100 x
read(1,'(a)') x;if(x/=' 1 1')print *,'error '
read(1,'(a)') x;if(x/=' 2 12')print *,'error '
read(1,'(a)') x;if(x/=' 3 123')print *,'error '
read(1,'(a)') x;if(x/=' 4 1234')print *,'error '
read(1,'(a)') x;if(x/=' 5 12345')print *,'error '
read(1,'(a)') x;if(x/=' 6 123456')print *,'error '
read(1,'(a)') x;if(x/=' 7 1234567')print *,'error '
read(1,'(a)') x;if(x/=' 8 12345678')print *,'error '
read(1,'(a)') x;if(x/=' 9 123456789')print *,'error '
read(1,'(a)') x;if(x/=' 10 123456789a')print *,'error '
read(1,'(a)') x;if(x/=' 11 123456789ab')print *,'error '
read(1,'(a)') x;if(x/=' 12 123456789abc')print *,'error '
read(1,'(a)') x;if(x/=' 13 123456789abcd')print *,'error '
read(1,'(a)') x;if(x/=' 14 123456789abcde')print *,'error '
read(1,'(a)') x;if(x/=' 15 123456789abcdef')print *,'error '
end
