
      integer(kind=1_8)::i01a(5)=(/1,2,3,4,5/),
     -                   i01c(5),i01d(5)
      real   (kind=4_4)::r04a(5)=(/1.,2.,3.,4.,5./),
     -                   r04c(5),r04d(5)
      complex(kind=4_2)::c08a(5)=(/(1.,0.),(2.,0.),(3.,0.),
     -                             (4.,0.),(5.,0.)/)      ,
     -                   c08c(5),c08d(5)
      logical(kind=4_1)::l04a(5)=(/.true. ,.false.,.true. ,
     -                             .false.,.true. /),
     -                   l04c(5),l04d(5)
      logical(kind=4)  ::mask(5)=(/.true. ,.false.,.true. ,
     -                             .false.,.true. /),
     -                   dvt(5)
      integer(kind=4)::error=0                            
      n=sin(0.0)
      where(mask)
         i01c=DOT_PRODUCT(i01a,i01a(5:1:-1))
      elsewhere
         i01c=DOT_PRODUCT(i01a(1:0),(/(i,i=1,n)/))
      endwhere

      where(mask(5:1:-1))
         r04c=DOT_PRODUCT(r04a,r04a(5:1:-1))
      elsewhere
         r04c=DOT_PRODUCT(r04a(1:0),(/(REAL(i,kind=4),i=1,n)/))
      endwhere

      where((/.true.,.false.,.true.,.false.,.true./))
         c08c=DOT_PRODUCT(c08a,c08a(5:1:-1))
      elsewhere
         c08c=DOT_PRODUCT(c08a(1:0),(/(CMPLX(i,0,kind=4),i=1,n)/))
      endwhere

      where((/(mod(i,2),i=1,5)/)/=0)
         l04c=DOT_PRODUCT(l04a,l04a(5:1:-1))
      elsewhere
         l04c=DOT_PRODUCT(l04a(1:0),(/(.true.,i=1,n)/))
      endwhere
      do i=1,5
         if(mask(i)) then
            i01d(i)=i01a(1)*i01a(5)+
     -              i01a(2)*i01a(4)+
     -              i01a(3)*i01a(3)+
     -              i01a(4)*i01a(2)+
     -              i01a(5)*i01a(1)
         else
            i01d(i)=0
         endif
      enddo

      do i=1,5
         if(mask(6-i)) then
            r04d(i)=r04a(1)*r04a(5)+
     -              r04a(2)*r04a(4)+
     -              r04a(3)*r04a(3)+
     -              r04a(4)*r04a(2)+
     -              r04a(5)*r04a(1)
         else
            r04d(i)=0.0
         endif
      enddo

      dvt(1)=.true.
      dvt(2)=.false.
      dvt(3)=.true.
      dvt(4)=.false.
      dvt(5)=.true.
      do i=1,5
         if(dvt(i)) then
            c08d(i)=CONJG(c08a(1))*c08a(5)+
     -              CONJG(c08a(2))*c08a(4)+
     -              CONJG(c08a(3))*c08a(3)+
     -              CONJG(c08a(4))*c08a(2)+
     -              CONJG(c08a(5))*c08a(1)
         else
            c08d(i)=(0.0,0.0)
         endif
      enddo

      do i=1,5
         if(mask(6-i)) then
            l04d(i)=l04a(1).AND.l04a(5) .OR.
     -              l04a(2).AND.l04a(4) .OR.
     -              l04a(3).AND.l04a(3) .OR.
     -              l04a(4).AND.l04a(2) .OR.
     -              l04a(5).AND.l04a(1)
         else
            l04d(i)=.false.
         endif
      enddo
      if(SIZE(PACK(i01c,i01c/=i01d))/=0) then
         write(6,*) 'TRUE VALUE:',i01d
         write(6,*) 'CLAC VALUE:',i01c
         error=1
      endif
      if(SIZE(PACK(r04c,r04c/=r04d))/=0) then
         write(6,*) 'TRUE VALUE:',r04d
         write(6,*) 'CLAC VALUE:',r04c
         error=1
      endif
      if(SIZE(PACK(c08c,c08c/=c08d))/=0) then
         write(6,*) 'TRUE VALUE:',c08d
         write(6,*) 'CLAC VALUE:',c08c
         error=1
      endif
      if(SIZE(PACK(l04c,l04c.neqv.l04d))/=0) then
         write(6,*) 'TRUE VALUE:',l04d
         write(6,*) 'CLAC VALUE:',l04c
         error=1
      endif
      if(error/=0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end
