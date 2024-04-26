       subroutine s1
                integer,parameter::a1(1)=iparity([1],1)
                integer,parameter::a2(1)=iall([1],1)
                integer,parameter::a3(1)=iany([1],1)
                write(1,*)a1
                write(1,*)a2
                write(1,*)a3
                end
       subroutine s2
               write(2,*)iparity([1],1)
               write(2,*)iall([1],1)
               write(2,*)iany([1],1)
               end
      call s1
      call s2
      rewind 1
      read(1,*) k1,k2,k3
      if (any([k1,k2,k3]/=1)) print *,101
      rewind 2
      read(2,*) k1,k2,k3
      if (any([k1,k2,k3]/=1)) print *,102
      print *,'pass'
      end

