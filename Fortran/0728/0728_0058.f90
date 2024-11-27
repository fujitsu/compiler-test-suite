call s1
 print *,'pass'
 end
  subroutine s1
character*100 r
logical v
   write(1,'(d)') 1.23456789
   write(1,'(e)') 1.23456789
   write(1,'(f)') 1.23456789
   write(1,'(g)') 1.23456789
   write(1,'(d)') 1.23456789_8
   write(1,'(e)') 1.23456789_8
   write(1,'(f)') 1.23456789_8
   write(1,'(g)') 1.23456789_8
   write(1,'(i)') 123_1
   write(1,'(i)') 123_2
   write(1,'(i)') 123_4
   write(1,'(i)') 123_8
   write(1,'(b)') 123_1
   write(1,'(b)') 123_2
   write(1,'(b)') 123_4
   write(1,'(b)') 123_8
   write(1,'(o)') 123_1
   write(1,'(o)') 123_2
   write(1,'(o)') 123_4
   write(1,'(o)') 123_8
   write(1,'(z)') 123_1
   write(1,'(z)') 123_2
   write(1,'(z)') 123_4
   write(1,'(z)') 123_8
   write(1,'(L)') .true._1
   write(1,'(L)') .true._2
   write(1,'(L)') .true._4
   write(1,'(L)') .true._8
   rewind 1
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) a;if (abs(a-1.23456)>0.0001)write(6,*) "NG"
   read(1,*) n;if (n/=123)write(6,*) "NG"
   read(1,*) n;if (n/=123)write(6,*) "NG"
   read(1,*) n;if (n/=123)write(6,*) "NG"
   read(1,*) n;if (n/=123)write(6,*) "NG"
   read(1,*) n;if (n/=1111011)write(6,*) "NG"
   read(1,*) n;if (n/=1111011)write(6,*) "NG"
   read(1,*) n;if (n/=1111011)write(6,*) "NG"
   read(1,*) n;if (n/=1111011)write(6,*) "NG"
   read(1,*) n;if (n/=173)write(6,*) "NG"
   read(1,*) n;if (n/=173)write(6,*) "NG"
   read(1,*) n;if (n/=173)write(6,*) "NG"
   read(1,*) n;if (n/=173)write(6,*) "NG"
   read(1,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(1,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(1,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(1,*) r;if (adjustl(r)/='7B')write(6,*) "NG"
   read(1,*) v;if (.not.v)write(6,*) "NG"
   read(1,*) v;if (.not.v)write(6,*) "NG"
   read(1,*) v;if (.not.v)write(6,*) "NG"
   read(1,*) v;if (.not.v)write(6,*) "NG"

   end
