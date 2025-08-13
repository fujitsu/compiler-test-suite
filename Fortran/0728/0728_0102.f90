 call s1
 print *,'pass'
 end
 subroutine s1
 write(25,'(E)') 1.
 write(25,'(E10.2)') 1.
  rewind 25
 read(25,*) a;if (abs(a-1.)>.0001)write(6,*) "NG"
 read(25,*) a;if (abs(a-1.)>.0001)write(6,*) "NG"
end
