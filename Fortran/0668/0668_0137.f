      program main
      integer * 4 l(20),vl
      data l/1,10,5,20,5,5,10,9,8,10,11,2,2,15,16,8,9,10,11,20/
      do 100  i=1,20
        vl=l(i)
        call sub(vl)
100   continue
      stop
      end
      subroutine sub(vl)
      integer * 4 vl
      integer * 4 i4a(20),i4b(20),i4c(20)
      integer * 4 x(20)
      real * 4 r4a(20),r4b(20),r4c(20)
      data x/10,9,8,7,6,5,4,3,2,1,11,12,13,14,15,16,17,18,19,20/
      vl = 0
      i4s = 0
      lw1 = 0 
      do i=1,20
        i4a(i) = i
        i4b(i) = i
        i4c(i) = i
        r4a(i) = i
        r4b(i) = i
        r4c(i) = i
      enddo
      do 100 i=1,vl
        i4a(i)=i
        i4b(i)=i4a(i)+1
        i4c(i)=i4b(i)-1
        r4a(i)=i
        r4b(i)=r4a(i)+1.
        r4c(i)=r4b(i)-1
100   continue
      do 200 i=1,vl
          do 202 k=1,vl
            lw1=i4a(k)
            if (k.eq.vl) goto 203
            r4a(lw1)=r4b(x(k))+k
            if (r4a(lw1).ne.0) then
              i4b(k)=i4b(k)+k
            endif
203         if (k.ne.vl) goto 204
            goto 202
204         i4c(x(k))=int(r4c(x(k)))*2.
202         r4c(k)=i4a(lw1)+k
          if (i.gt.1) then
            i4s = i4a(i)+1
          else
            i4s=r4a(i)+1
          endif
200   continue
      write(6,*)
      write(6,*) i4a,i4b,i4c
      write(6,*) r4a,r4b,r4c
      write(6,*) lw1,i4s
      return
      end
