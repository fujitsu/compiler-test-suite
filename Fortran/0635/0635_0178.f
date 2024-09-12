      common /n1/nzx
      real zxtd(20)/20*0/
      dt1 = 5
      call init()

      do 16 nz1=nzx,10
        if(nz1.eq.10) zxtd(nz1)=8
        do ny1=1,3
            if(2.lt.dt1) then
               dt1=3
            end if
         enddo
        zxtd(nz1)=ny1
 16       continue

       call check(zxtd)
       end

      subroutine init()
      common /n1/nzx
      nzx = 1
      return
      end

      subroutine check(zxtd)
      real zxtd(20)
      real res(20)/10*4,10*0/

      do i=1,20
         if (zxtd(i) .ne. res(i)) goto 99
      enddo
      write(6,*) ' ## ok ## '
      return
 99      write(6,*) ' ## ng ## '
      write(6,1) zxtd
      write(6,1) res
 1        format(10f5.2)
      return
      end
