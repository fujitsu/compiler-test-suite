 call s1
 print *,'pass'
 end
 subroutine s1
 write(1,'(E)') 1.
 write(1,'(E10.2)') 1.
  rewind 1
 read(1,*) a;if (abs(a-1.)>.0001)write(6,*) "NG"
 read(1,*) a;if (abs(a-1.)>.0001)write(6,*) "NG"
end
