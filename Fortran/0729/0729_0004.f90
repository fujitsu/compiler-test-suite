character (len=99) :: i_fmt,tmp

write(63, "(4I4)") 22, -444, 0, 55555
write(63, "(4I0)") 22, -444, 0, 55555
write(63, "(I0)") 0
write(63, "(4I4.3)") 22, -444, 0, 55555
write(63, "(4I0.3)") 22, -444, 0, 55555

I_FMT = "(I6,   A, I6.5, A, I6.3, A, I6.0, A, &
        & I0.6, A, I0.3, A, I0.0, A)"
write(63, I_FMT) ( 1874, "|", N = 1, 7)
write(63, I_FMT) (-1874, "|", N = 1, 7)
write(63, I_FMT) ( 0, "|", N = 1, 7)
rewind 63
read(63,'(a)') tmp
if (index(tmp,'22-444   0')==0)write(6,*) "NG"
read(63,'(a)') tmp
if (index(tmp,'22-444055555')==0)write(6,*) "NG"
read(63,'(a)') tmp
if (index(tmp,'0')==0)write(6,*) "NG"
read(63,'(a)') tmp
if (index(tmp,'022-444 000')==0)write(6,*) "NG"
read(63,'(a)') tmp
if (index(tmp,'22-44400055555')==0)write(6,*) "NG"
I_FMT="(4I4)"
write(64, I_FMT) 22, -444, 0, 55555
I_FMT="(4I0)"
write(64, I_FMT) 22, -444, 0, 55555
I_FMT="(I0)"
write(64, I_FMT) 0
I_FMT="(4I4.3)"
write(64, I_FMT) 22, -444, 0, 55555
I_FMT="(4I0.3)"
write(64, I_FMT) 22, -444, 0, 55555
rewind 64
read(64,'(a)') tmp
if (index(tmp,'22-444   0')==0)write(6,*) "NG"
read(64,'(a)') tmp
if (index(tmp,'22-444055555')==0)write(6,*) "NG"
read(64,'(a)') tmp
if (index(tmp,'0')==0)write(6,*) "NG"
read(64,'(a)') tmp
if (index(tmp,'022-444 000')==0)write(6,*) "NG"
read(64,'(a)') tmp
if (index(tmp,'22-44400055555')==0)write(6,*) "NG"
print *,'pass'

end
