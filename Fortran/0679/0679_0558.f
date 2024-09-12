      program main
      real a(10),b(10),sa(2),sb(2)
      data n/10/
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,2,4,4,6,2,8,2,10/
      logical la(10),lb(10),lc(10),lsa(2),lsb(2)
      logical ls1,ls2,lon,loff
      data la/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./
      data lb/10*.false./,lc/10*.false./
      data s1/0/,s2/0/,ls1/.false./,ls2/.false./
      data lon/.true./,loff/.false./
      data sa/2*0./,sb/2*0./,lsa/2*.false./,lsb/2*.true./

      do 10 i=1,n
        if(la(i)) then
          if(lon) then
            s1 = a(i)
            s2 = 2.0
            ls1 = a(i).ne.b(i)
            ls2 = .true.
            sa(1) = b(i)
            sb(1) = 100.
            lsa(1) = a(i).eq.b(i)
            lsb(1) = .false.
          endif
        endif
  10  continue
      write(6,*) s1,s2,ls1,ls2
      write(6,*) sa(1),sb(1)
      write(6,*) lsa(1),lsb(1)

      do 11 i=1,n
        if(la(i)) then
          if(loff) then
            s1 = a(i)
            s2 = 2.0
            ls1 = a(i).ne.b(i)
            ls2 = .true.
            sa(1) = b(i)
            sb(1) = 100.
            lsa(1) = a(i).eq.b(i)
            lsb(1) = .false.
          endif
        endif
  11  continue
      write(6,*) s1,s2,ls1,ls2
      write(6,*) sa(1),sb(1)
      write(6,*) lsa(1),lsb(1)
      stop
      end
