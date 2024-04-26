c
       program   rnr012
       integer*2 ih1, ih2, ih3, iha(11)
       integer*2 ihd1, ihd2, ihd3, ihi, ipar1, ipar2
       parameter (ipar1=127, ipar2=1)
       data iha/1,2,3,4,5,6,7,8,9,10,11/
c
       ih1=iand(5,3)
       ih2=iand(2,4)
       do 100 ihi=1,10
         ihd1=ior(ih1, ih2)
         ihd2=iand(iha(ihi), iha(ihi+1))
         ihd3=ieor(iand(ihd2, ihi), ihd1)
         ih3 =ior(ieor(ihd1, iha(ihi)),ihd3)
         iha(ihi) = ior(ihd2, ih3)
         ih1 =ih1+1
         ih2 =ih2*2
 100   continue
       iha(ihi-1)=ior(ihi-ipar2, iand(ihd3, ipar1))
       do 200 ihi=1,11
         if ( iha(ihi).ne.ihi ) then
           write(6,*) 'ng iha=',iha(ihi),'ihi=',ihi
           stop
         endif
200    continue
       write(6,*) '*** ok ***'
       stop
       end
