      integer::i1,i2,i3,i4
      integer::k1,k2,k3,k4
      data i1,i2,i3,i4 /z'01',z'02',z'03',z'04'/
      data k1,k2,k3,k4 /1,2,3,4/

      call sub(i1,i2,i3,i4,k1,k2,k3,k4)
      print *,'pass'
      end

      subroutine sub(i1,i2,i3,i4,k1,k2,k3,k4)
      integer::i1,i2,i3,i4
      integer::k1,k2,k3,k4
      n=0

      if ( (i1.eq.z'01'.and.i2.eq.z'02') .or.   &
           (i3.eq.x'03'.and.i4.eq.z'04') )   then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if ( (k1.eq.z'01'.and.k2.eq.z'02') .or.   &
           (k3.eq.x'03'.and.k4.eq.z'04') )   then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (n.ne.2) write(6,*) "NG"
      end
