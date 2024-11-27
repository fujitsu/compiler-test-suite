 call s1
 print *,'pass'
 end
 subroutine s1
            character*8 st
            st='-2.5 3.6'
            read(st,*)a,b
            write(1,*)-2.5 ,3.6
            rewind 1
            read(1,*) aa,bb
  if (abs(a-(-2.5))>0.0001)write(6,*) "NG"
  if (abs(aa-(-2.5))>0.0001)write(6,*) "NG"
  if (abs(b-(+3.6))>0.0001)write(6,*) "NG"
  if (abs(bb-(+3.6))>0.0001)write(6,*) "NG"
            end
