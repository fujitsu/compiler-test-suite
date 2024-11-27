       character,dimension(2500):: xyz
       i5=46;xyz(1)=''
       call sub((/xyz(2086:i5)/))
       call sub((/xyz(  47:i5)/))
 rewind 1
 read(1,*) i,j;if(i/=9999)write(6,*) "NG";if(j/=9998)write(6,*) "NG"
 read(1,*) i,j;if(i/=9999)write(6,*) "NG";if(j/=9998)write(6,*) "NG"
print *,'pass'
end
subroutine sub(c)
character*(*),dimension(0)::c
write(1,*)9999,c,9998
end
