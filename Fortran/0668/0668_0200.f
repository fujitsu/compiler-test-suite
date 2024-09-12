      program main
      integer ia(32),ib(32),ic(32),id(32),ie(32),
     #        if(32),ig(32),ih(32),ii(32)
      logical la(32),lb(32),lc(32),ld(32),le(32)
      common  /data1/ia,ib,ic,id,ie,if,ig,ih,ii
      data la/.false.,.true., .false.,.true., .false.,.true., .false.,
     #        .true., .false.,.true., .false.,.true., .false.,.true.,
     #        .false.,.true., .false.,.true., .false.,.true., .false.,
     #        .true., .false.,.true., .false.,.true., .false.,.true.,
     #        .false.,.true., .false.,.true./
      data lb/.false.,.false.,.true., .true., .false.,.false.,.true.,
     #        .true., .false.,.false.,.true., .true., .false.,.false.,
     #        .true., .true., .false.,.false.,.true., .true., .false.,
     #        .false.,.true., .true., .false.,.false.,.true., .true.,
     #        .false.,.false.,.true., .true./
      data lc/.false.,.false.,.false.,.false.,.true., .true., .true.,
     #        .true., .false.,.false.,.false.,.false.,.true., .true.,
     #        .true., .true., .false.,.false.,.false.,.false.,.true.,
     #        .true., .true., .true., .false.,.false.,.false.,.false.,
     #        .true., .true., .true., .true./
      data ld/.false.,.false.,.false.,.false.,.false.,.false.,.false.,
     #        .false.,.true., .true., .true., .true., .true., .true.,
     #        .true., .true., .false.,.false.,.false.,.false.,.false.,
     #        .false.,.false.,.false.,.true., .true., .true., .true.,
     #        .true., .true., .true., .true./
      data le/.false.,.false.,.false.,.false.,.false.,.false.,.false.,
     #        .false.,.false.,.false.,.false.,.false.,.false.,.false.,
     #        .false.,.false.,.true., .true., .true., .true., .true.,
     #        .true., .true., .true., .true., .true., .true., .true.,
     #        .true., .true., .true., .true./
      call init1
      do 100 i=1,32
        if(la(i)) goto 100
           ia(i) = 100 + i
          if(lb(i)) goto 200
             ib(i) = 200 + i
            if(lc(i)) goto 300
               ic(i) = 300 + i
              if(ld(i)) goto 400
                 id(i) = 400 + i
                if(le(i)) goto 500
                   ie(i) = 500 + i
  500           continue
                 if(i) = 400 + i
  400         continue
               ig(i) = 300 + i
  300       continue
             ih(i)= 200 + i
  200     continue
           ii(i) = 100 + i
  100 continue
      write(6,*) ' test-program main '
      write(6,*) ' ia '
      write(6,1) ia
      write(6,*) ' ib '
      write(6,1) ib
      write(6,*) ' ic '
      write(6,1) ic
      write(6,*) ' id '
      write(6,1) id
      write(6,*) ' ie '
      write(6,1) ie
      write(6,*) ' if '
      write(6,1) if
      write(6,*) ' ig '
      write(6,1) ig
      write(6,*) ' ih '
      write(6,1) ih
      write(6,*) ' ii '
      write(6,1) ii
    1 format(19(1x,i3.3))
      end
      subroutine init1
      integer ia(32),ib(32),ic(32),id(32),ie(32),
     #        if(32),ig(32),ih(32),ii(32)
      common  /data1/ia,ib,ic,id,ie,if,ig,ih,ii
      do 100 i=1,32
        ia(i)=0
        ib(i)=0
        ic(i)=0
        id(i)=0
        ie(i)=0
        if(i)=0
        ig(i)=0
        ih(i)=0
        ii(i)=0
  100 continue
      return
      end
