      common /blk/ pathba(50),arrayb(50),npath
      integer*4  pathba,arrayb
      integer*4  crosb2(50),k(50),wk(101)
      equivalence (wk(1),pathba(1))
      logical*4  ic(50),lflag(50)
      data  ic/50*.true./,k/50*1/,ncros2/45/
      npath=1
      narray=1
      do 10 i=1,50,2
        lflag(i)=.false.
        lflag(i+1)=.true.
        crosb2(i+1)=i
        crosb2(i)=i+1
        k(i)=i
  10  continue
      do 8483 iv=1,ncros2
      jv=crosb2(iv)
      if( lflag(iv) ) then
            ic(jv)=.false.
            npath=npath+1
            pathba(npath)=jv
      else
            k(jv)=k(jv)-1
            narray=narray+1
            arrayb(narray)=jv
      endif
 8483 continue
                 write(6,*) '   *** point 2 *** ',npath,narray
 8484 continue
      write(6,*) ' k=',k
      write(6,*) 'ic=',ic
      stop
      end
