      namelist  /entry/ atom,zz,z,de,ax
      character*2 atom
      character*80 ncd
      dimension  data(8),datac(8)
      write(6,*) '                  **'
   10 read(5,100,end=900) ncd
  100 format(a)
      write(1,100) ncd
      go to 10
  900 rewind 1
      read(1,entry)
      if(atom.ne.'ha') goto 300
      write(6,*) ' ** item 1 ok **'
      goto 301
  300 write(6,*) ' ** item 1 ng **'
  301 continue
      if(zz.ne.1.0)  goto 302
      write(6,*) ' ** item 2 ok **'
      goto 303
  302 write(6,*) ' ** item 2 ng **'
  303 continue
      if(z.ne.0.0)  goto 304
      write(6,*) ' ** item 3 ok **'
      goto 305
  304 write(6,*) ' ** item 3 ng **'
  305 continue
      if(ax.ne.1.0)  goto 306
      write(6,*) ' ** item 4 ok **'
      goto 307
  306 write(6,*) ' ** item 4 ng **'
  307 continue
      if(de.ne.0.0136)  goto 308
      write(6,*) ' ** item 5 ok **'
      goto 309
  308 write(6,*) ' ** item 5 ng **'
  309 continue
      read(1,400) data
  400 format(8f10.0)
      datac(1)=1.431
      datac(2)=0.414
      datac(3)=19.0
      datac(4)=10.0
      datac(5)=0.0
      datac(6)=1.0
      datac(7)=0.5
      datac(8)=0.2
      do 401 i=1,8
      if(data(i).ne.datac(i)) goto 402
  401 continue
      write(6,*) ' ** item 6 ok **'
      goto 403
  402 write(6,*) ' ** item 6 ng **'
  403 continue
      write(6,*) ' **         ended **'
      stop
      end
