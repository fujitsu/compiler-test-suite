
      logical::msk1(3,3),msk2(3,3,3)
      integer*1::i01a(3,3,3),i01b(3,3),i01c(3,3),
     -           dvt_it(3,3)= 0       ,dvt_if(3,3)= 0
      real     ::r04a(3,3,3),r04b(3,3),r04c(3,3),
     -           dvt_rt(3,3)= 0.0     ,dvt_rf(3,3)= 0.0
      complex  ::c08a(3,3,3),c08b(3,3),c08c(3,3),
     -           dvt_ct(3,3)=(0.0,0.0),dvt_cf(3,3)=(0.0,0.0)
      integer  ::i04a(3),error/0/

      msk1=reshape((/(MOD(i,2)/=0,i=1,9)/),(/3,3/))
      msk2=reshape((/(i.le.13,i=1,27)/),(/3,3,3/))
      i01a=reshape((/(INT  (i   ,kind=KIND(127_1)),i=1,27)/),(/3,3,3/))
      r04a=reshape((/(REAL (i   ,kind=KIND(.0_4 )),i=1,27)/),(/3,3,3/))
      c08a=reshape((/(CMPLX(i,-i,kind=KIND(.0_4 )),i=1,27)/),(/3,3,3/))
      i04a=(/1,3,2/)
      where(msk1)
         i01b=SUM(i01a(i04a(:),:,i04a(3:1:-1)),
     -            dim=i04a(1),mask=msk2)
      elsewhere
         i01b=SUM(i01a(i04a(:),:,i04a(3:1:-1)),
     -            dim=i04a(1),mask=.NOT.msk2)
      endwhere
      where(msk1)
         r04b=SUM(r04a(i04a(:),:,i04a(3:1:-1)),
     -            dim=i04a(1),mask=msk2)
      elsewhere
         r04b=SUM(r04a(i04a(:),:,i04a(3:1:-1)),
     -            dim=i04a(1),mask=.NOT.msk2)
      endwhere
      where(msk1)
         c08b=SUM(c08a(i04a(:),:,i04a(3:1:-1)),
     -            dim=i04a(1),mask=msk2)
      elsewhere
         c08b=SUM(c08a(i04a(:),:,i04a(3:1:-1)),
     -            dim=i04a(1),mask=.NOT.msk2)
      endwhere
      do k=1,3
         do j=1,3
            do i=1,3
               if(msk2(i,j,k)) then
                  dvt_it(j,k)=dvt_it(j,k)+i01a(i04a(i),j,i04a(4-k))
                  dvt_rt(j,k)=dvt_rt(j,k)+r04a(i04a(i),j,i04a(4-k))
                  dvt_ct(j,k)=dvt_ct(j,k)+c08a(i04a(i),j,i04a(4-k))
               else
                  dvt_if(j,k)=dvt_if(j,k)+i01a(i04a(i),j,i04a(4-k))
                  dvt_rf(j,k)=dvt_rf(j,k)+r04a(i04a(i),j,i04a(4-k))
                  dvt_cf(j,k)=dvt_cf(j,k)+c08a(i04a(i),j,i04a(4-k))
               endif
            enddo
         enddo
      enddo
      do j=1,3
         do i=1,3
            if(msk1(i,j)) then
               i01c(i,j)=dvt_it(i,j)
               r04c(i,j)=dvt_rt(i,j)
               c08c(i,j)=dvt_ct(i,j)
            else
               i01c(i,j)=dvt_if(i,j)
               r04c(i,j)=dvt_rf(i,j)
               c08c(i,j)=dvt_cf(i,j)
            endif
         enddo
      enddo
      if(SIZE(PACK(i01b,i01b/=i01c))/=0) then
         error=1
         write(6,*) 'TRUE VALUE:',i01c
         write(6,*) 'CALC VALUE:',i01b
      endif
      if(SIZE(PACK(r04b,r04b/=r04c))/=0) then
         error=1
         write(6,*) 'TRUE VALUE:',r04c
         write(6,*) 'CALC VALUE:',r04b
      endif
      if(SIZE(PACK(c08b,c08b/=c08c))/=0) then
         error=1
         write(6,*) 'TRUE VALUE:',c08c
         write(6,*) 'CALC VALUE:',c08b
      endif
      if(error/=0) then
         write(6,*) '*** NG ***'
      else
         write(6,*) '*** OK ***'
      endif
      stop
      end
