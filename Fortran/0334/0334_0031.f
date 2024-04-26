
      logical(kind=1_8),parameter::t=.true.,f=.false.
      integer(kind=4_8)::i04a(3,3)/1,2,3, 4,5,6, 7,8,9/,
     -                   i04b(3,3),i04c(3,3),i04x(3,1),i04y(1,3)
      real   (kind=4_8)::r04a(3,3)/1,2,3, 4,5,6, 7,8,9/,
     -                   r04b(3,3),r04c(3,3),r04x(3,1),r04y(1,3)
      complex(kind=4_8)::c08a(3,3)/( 1.,- 1.),( 2.,- 2.),( 3.,- 3.),
     -                             ( 4.,- 4.),( 5.,- 5.),( 6.,- 6.),
     -                             ( 7.,- 7.),( 8.,- 8.),( 9.,- 9.)/,
     -                   c08b(3,3),c08c(3,3),c08x(3,1),c08y(1,3)
      logical(kind=1_8)::l01a(3,3)/t,f,t, f,t,f, t,f,t/,
     -                   l01b(3,3),l01c(3,3),l01x(3,1),l01y(1,3)
      logical(kind=4_8)::mask(3,3)/t,f,t, f,t,f, t,f,t/
      integer(kind=8_8)::error=0
      i04x=MATMUL(i04a( : ,1:1),RESHAPE((/1/)           ,(/1,1/)))
      i04y=MATMUL(i04a(1:1, : ),RESHAPE((/(1,i=9,1,-1)/),(/3,3/)))
      where(mask)
         i04b=MATMUL(i04a      ,RESHAPE((/(i,i=9,1,-1)/),(/3,3/)))
      elsewhere
         i04b=MATMUL(i04x,i04y)
      endwhere

      r04x=MATMUL(r04a( : ,1:1),
     -            RESHAPE((/(REAL(1,kind=4)         )/),(/1,1/)))
      r04y=MATMUL(r04a(1:1, : ),
     -            RESHAPE((/(REAL(1,kind=4),i=9,1,-1)/),(/3,3/)))
      where(mask)
         r04b=MATMUL(r04a      ,
     -            RESHAPE((/(REAL(i,kind=4),i=9,1,-1)/),(/3,3/)))
      elsewhere
         r04b=MATMUL(r04x,r04y)
      endwhere

      c08x=MATMUL(c08a( : ,1:1),
     -            RESHAPE((/(CMPLX(1,-1,kind=4)         )/),(/1,1/)))
      c08y=MATMUL(c08a(1:1, : ),
     -            RESHAPE((/(CMPLX(1,-1,kind=4),i=9,1,-1)/),(/3,3/)))
      where(mask)
         c08b=MATMUL(c08a      ,
     -            RESHAPE((/(CMPLX(i,-i,kind=4),i=9,1,-1)/),(/3,3/)))
      elsewhere
         c08b=MATMUL(c08x,c08y)
      endwhere

      l01x=MATMUL(l01a( : ,1:1),
     -            RESHAPE((/(t)/),(/1,1/)))
      l01y=MATMUL(l01a(1:1, : ),
     -            RESHAPE((/(MOD(i,1).eq.0,i=9,1,-1)/),(/3,3/)))
      where(mask)
         l01b=MATMUL(l01a      ,
     -            RESHAPE((/(MOD(i,3)/=0  ,i=9,1,-1)/),(/3,3/)))
      elsewhere
         l01b=MATMUL(l01x,l01y)
      endwhere
      do j=1,3
         do i=1,3
            i04c(i,j)=0
            r04c(i,j)=0.
            c08c(i,j)=(0.,0.)
            l01c(i,j)=t
         enddo
      enddo
      do j=1,3
         do i=1,3
            if(mask(i,j)) then
               do k=1,3
                  i04c(i,j)=i04c(i,j)+i04a(i,k)*(13-k-3*j)
               enddo
            else
               i04c(i,j)=i04a(i,1)*(i04a(1,1)+i04a(1,2)+i04a(1,3))
            endif
         enddo
      enddo

      do j=1,3
         do i=1,3
            if(mask(i,j)) then
               do k=1,3
                  r04c(i,j)=
     -              r04c(i,j)+r04a(i,k)*(13-REAL(k,kind=4)-3*REAL(j))
               enddo
            else
               r04c(i,j)=r04a(i,1)*(r04a(1,1)+r04a(1,2)+r04a(1,3))
            endif
         enddo
      enddo

      do j=1,3
         do i=1,3
            if(mask(i,j)) then
               do k=1,3
                  c08c(i,j)=
     -              c08c(i,j)+c08a(i,k)*
     -                CMPLX(13-k-3*j,-(13-k-3*j),kind=4)
               enddo
            else
               c08c(i,j)=c08a(i,1)*CMPLX(1.,-1.,kind=4_1)*
     -                  (c08a(1,1)*CMPLX(1.,-1.,kind=4_2)+
     -                   c08a(1,2)*CMPLX(1.,-1.,kind=4_4)+
     -                   c08a(1,3)*CMPLX(1.,-1.,kind=4_8))
            endif
         enddo
      enddo

      do j=1,3
         do i=1,3
            if(mask(i,j)) then
               do k=1,3
                  l01c(i,j)=l01c(i,j).OR.
     -            l01a(i,k).AND.(MOD((13-k-3*j),3)/=0)
               enddo
            else
               l01c(i,j)=l01a(i,1).AND.
     -         (l01a(1,1).OR.l01a(1,2).OR.l01a(1,3))
            endif
         enddo
      enddo
      if(SIZE(PACK(i04b,i04b.ne.i04c))/=0) then
         write(6,*) 'TRUE VALUE:',i04c
         write(6,*) 'CLAC VALUE:',i04b
         error=1
      endif
      if(SIZE(PACK(r04b,r04b.ne.r04c))/=0) then
         write(6,*) 'TRUE VALUE:',r04c
         write(6,*) 'CLAC VALUE:',r04b
         error=1
      endif
      if(SIZE(PACK(c08b,c08b.ne.c08c))/=0) then
         write(6,*) 'TRUE VALUE:',c08c
         write(6,*) 'CLAC VALUE:',c08b
         error=1
      endif
      if(SIZE(PACK(l01b,l01b.neqv.l01c))/=0) then
         write(6,*) 'TRUE VALUE:',l01c
         write(6,*) 'CLAC VALUE:',l01b
         error=1
      endif
      if(error/=0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif

      stop
      end
