
      integer*1,dimension(:),allocatable::va,vb,vc
      integer*1,dimension(:),allocatable::sa,sb,sc
      real     ,dimension(:),allocatable::r
      n=10
      allocate(va(n),vb(n),vc(n),sa(n),sb(n),sc(n),r(n))
      call random_number(r)

      va=(r-0.5)*huge(va)*2
      where ( va < 0 ) 
         vc = ibclr(va,bit_size(va)-1) 
      else where
         vc = va
      end where

      do i=1,n
         sa(i)=(r(i)-0.5)*huge(sa(i))*2
      enddo
      do i=1,n
         if(sa(i) < 0) then
            sc(i) = ibclr(sa(i),bit_size(sa(i))-1) 
         else
            sc(i) = sa(i)
         endif
      enddo
      if(SIZE(PACK(vc,vc.ne.sc))/=0) then
         write(6,*) 'TRUE VALUE:',vc
         write(6,*) 'CALC VALUE:',sc
         write(6,*) '*** NG ***'
      else
         write(6,*) '*** OK ***'
      endif
      end

