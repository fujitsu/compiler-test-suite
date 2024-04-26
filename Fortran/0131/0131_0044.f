c
       program   rnrst0b
       integer*2 ihp
       integer*4 iwp
       integer*4 idp
       parameter (ihp=2)
       parameter (iwp=12345)
       parameter (idp=76543210)
c
       integer*2 ih1/ihp/, ih2/32/
       integer*4 iw1/iwp/, iw2/1/
       integer*4 id1/idp/, id2/idp/
       logical*1 ls1, ls2, ls3
       logical   lg1, lg2, lg3
c
       lg1 = ih1.ge.ihp
       lg2 = iw1.le.iwp
       lg3 = id1.eq.idp
       ls1 = ih2.lt.ih1
       ls2 = iw2.gt.iw1
       ls3 = id2.ne.id1
       lg1 = lg1.and.(ih1/ih2.lt.ih1+ih2)
       lg2 = lg2.and.(iw1/iw2.le.iw1+iw2)
       lg3 = lg3.and.(id1/id2.eq.id1+id2)
       ls1 = ls1.and.(ih1*ih2.ge.ih1-ih2)
       ls2 = ls2.and.(iw1*iw2.gt.iw1-iw2)
       ls3 = ls3.and.(id1*id2.ne.id1-id2)
       if (ih1.eq.ih2) goto 100
       if (iw1.eq.iw2) goto 110
       if (id1.eq.id2) goto 120
       if ((ih1.eq.ih2).and.(ih2.gt.ihp)) goto 200
       if ((iw1.eq.iw2).and.(iw2.gt.iwp)) goto 210
       if ((id1.eq.id2).and.(id2.gt.idp)) goto 220
       goto 300
100    lg1 = .not.lg1
110    lg2 = .not.lg2
120    lg3 = .not.lg3
200    ls1 = .not.ls1
210    ls2 = .not.ls2
220    ls3 = .not.ls3
300    continue
       if (lg1.and.lg2.and.lg3.and.ls1.and.ls2.and.ls3) then
         write(6,*) '*** ok ***'
       else
         write(6,*) '*** ng ***'
       endif
       stop
       end
