        call s1
        print *,'pass'
        end
        subroutine s1
        end
      subroutine parse_string(line,imsg,msg,xmsg,cmsg,nwds)
      integer max_entries
      parameter(max_entries=20)
      character*80 line
      integer imsg(max_entries)
      integer msg(max_entries)
      real*8 xmsg(max_entries)
      character*32 cmsg(max_entries)
      integer nwds
      logical finished

      integer index(max_entries,2),i,begin,entrynum,isinteger,isreal,i2

      entrynum=1
      begin=1
      do i=1,80
         if (((line(i:i).eq.' ').or.(line(i:i).eq.achar(9)))
     &        .and.(begin.eq.0)) then
            index(entrynum,2)=i-1
            begin=1
            entrynum=entrynum+1
         else if ((line(i:i).eq.' ').or.(line(i:i).eq.achar(9))) then
            continue
         else if (begin.eq.1) then
            index(entrynum,1)=i
            begin=0
         else
            continue
         endif
      enddo
      if (begin.eq.1) entrynum=entrynum-1
      nwds=entrynum

      do i=1,nwds
         isinteger=1
         isreal=1
         do i2=index(i,1),index(i,2)
            if ((line(i2:i2).ne.'+').and.(line(i2:i2).ne.'-').and.
     &           ((iachar(line(i2:i2)).gt.57).or.
     &           (iachar(line(i2:i2)).lt.48))) isinteger=0
            if ((line(i2:i2).ne.'+').and.(line(i2:i2).ne.'-').and.
     &           ((iachar(line(i2:i2)).gt.57).or.
     &           (iachar(line(i2:i2)).lt.48)).and.
     &           (line(i2:i2).ne.'.').and.
     &           (line(i2:i2).ne.'E').and.
     &           (line(i2:i2).ne.'e').and.
     &           (line(i2:i2).ne.'D').and.
     &           (line(i2:i2).ne.'d')) isreal=0
         enddo
         if ((isreal.eq.1).and.(isinteger.eq.0)) then
            finished=.false.
            if (index(i,1).eq.(index(i,2))) then
               if ((line(index(i,1):index(i,2)).eq.'e').or.
     &              (line(index(i,1):index(i,2)).eq.'E').or.
     &              (line(index(i,1):index(i,2)).eq.'d').or.
     &              (line(index(i,1):index(i,2)).eq.'D')) then
                  msg(i)=3
                  cmsg(i)=line(index(i,1):index(i,2))
                  finished=.true.
               endif
            endif
            if (finished.eqv..false.) then
               msg(i)=2
               read(line(index(i,1):index(i,2)),*) xmsg(i)
            endif
         else if (isinteger.eq.1) then
            msg(i)=1
            read(line(index(i,1):index(i,2)),*) imsg(i)
         else
            msg(i)=3
            cmsg(i)=line(index(i,1):index(i,2))
         endif
      enddo

      end
