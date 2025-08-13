 call s1
 print *,'pass'
 end
subroutine s11
common /x/istep,ix,lstp(5)
do i=1,5
  read(7,*) istep
  if ( ix<3.and. istep>3 ) goto 99
  lstp(i) = istep
  write(8,*)lstp(i)
enddo
99 continue
end
 block data
 common /x/istep,ix,lstp(5)
 data ix/3/
 end
 subroutine s1
   write(7,*) 10
   write(7,*) 20
   write(7,*) 30
   write(7,*) 40
   write(7,*) 50
   rewind 7
   call s11
   rewind 8
   read (8,*) j;if (j/=10)write(6,*) "NG"
   read (8,*) j;if (j/=20)write(6,*) "NG"
   read (8,*) j;if (j/=30)write(6,*) "NG"
   read (8,*) j;if (j/=40)write(6,*) "NG"
   read (8,*) j;if (j/=50)write(6,*) "NG"
 end
