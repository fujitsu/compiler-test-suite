 call s1
 print *,'pass'
 end
subroutine s11
common /x/istep,ix,lstp(5)
do i=1,5
  read(1,*) istep
  if ( ix<3.and. istep>3 ) goto 99
  lstp(i) = istep
  write(2,*)lstp(i)
enddo
99 continue
end
 block data
 common /x/istep,ix,lstp(5)
 data ix/3/
 end
 subroutine s1
   write(1,*) 10
   write(1,*) 20
   write(1,*) 30
   write(1,*) 40
   write(1,*) 50
   rewind 1
   call s11
   rewind 2
   read (2,*) j;if (j/=10)write(6,*) "NG"
   read (2,*) j;if (j/=20)write(6,*) "NG"
   read (2,*) j;if (j/=30)write(6,*) "NG"
   read (2,*) j;if (j/=40)write(6,*) "NG"
   read (2,*) j;if (j/=50)write(6,*) "NG"
 end
