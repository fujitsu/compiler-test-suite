      data      n1/10/,n2/10/,n3/10/
      real      qa(10,10),qb(10,10),qc(10,10),qs1
      real   ca(10,10),cb(10,10),cc(10,10),cs1
      real  cda(10,10),cdb(10,10),cdc(10,10),cds1
      real  cqa(10,10),cqb(10,10),cqc(10,10),cqs1
      cdb=0
      cdc=0
      qb=0
      qc=0
      cqa=0

      do 300 i=1,n1
        do 30 j=1,10
          do 30 k=1,10
              cda(j,k) = cdb(j,k) + cdc(j,k)
   30   continue
        do 31 l=1,n2
          do 31 m=1,n2
            qa(l,m) = qb(l,m)*qc(m,l)
   31     continue
  300 continue
c
      write(6,*) 'qa  = ',qa
      write(6,*) 'cqa  = ',cqa
      end
