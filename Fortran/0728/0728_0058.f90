call s1
 print *,'pass'
 end
  subroutine s1
character*100 r
logical v
   write(3,'(d)') 1.23456789
   write(3,'(e)') 1.23456789
   write(3,'(f)') 1.23456789
   write(3,'(g)') 1.23456789
   write(3,'(d)') 1.23456789_8
   write(3,'(e)') 1.23456789_8
   write(3,'(f)') 1.23456789_8
   write(3,'(g)') 1.23456789_8
   write(3,'(i)') 123_1
   write(3,'(i)') 123_2
   write(3,'(i)') 123_4
   write(3,'(i)') 123_8
   write(3,'(b)') 123_1
   write(3,'(b)') 123_2
   write(3,'(b)') 123_4
   write(3,'(b)') 123_8
   write(3,'(o)') 123_1
   write(3,'(o)') 123_2
   write(3,'(o)') 123_4
   write(3,'(o)') 123_8
   write(3,'(z)') 123_1
   write(3,'(z)') 123_2
   write(3,'(z)') 123_4
   write(3,'(z)') 123_8
   write(3,'(L)') .true._1
   write(3,'(L)') .true._2
   write(3,'(L)') .true._4
   write(3,'(L)') .true._8
   rewind 3
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(3,*) n;if (n/=123)write(6,*) "NG"
   read(3,*) n;if (n/=123)write(6,*) "NG"
   read(3,*) n;if (n/=123)write(6,*) "NG"
   read(3,*) n;if (n/=123)write(6,*) "NG"
   read(3,*) n;if (n/=1111011)write(6,*) "NG"
   read(3,*) n;if (n/=1111011)write(6,*) "NG"
   read(3,*) n;if (n/=1111011)write(6,*) "NG"
   read(3,*) n;if (n/=1111011)write(6,*) "NG"
   read(3,*) n;if (n/=173)write(6,*) "NG"
   read(3,*) n;if (n/=173)write(6,*) "NG"
   read(3,*) n;if (n/=173)write(6,*) "NG"
   read(3,*) n;if (n/=173)write(6,*) "NG"
   read(3,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(3,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(3,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(3,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(3,*) v;if (.not.v)write(6,*) "NG"
   read(3,*) v;if (.not.v)write(6,*) "NG"
   read(3,*) v;if (.not.v)write(6,*) "NG"
   read(3,*) v;if (.not.v)write(6,*) "NG"

   end
