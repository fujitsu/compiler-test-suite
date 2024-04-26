
      logical  *4::mask(3,3,3)
      integer  *4::i04a(3,3,3),i04b(3,3,3),dvt_it(3,3,3),dvt_if(3,3,3)
      complex  *8::c08a(3,3,3),c08b(3,3,3),dvt_xt(3,3,3),dvt_xf(3,3,3)
      character*2::ch4a(3,3,3),ch4b(3,3,3),dvt_ct(3,3,3),dvt_cf(3,3,3)
      integer error/0/
      mask=reshape((/(MOD(i,2)/=0              ,i=1,27)/),(/3,3,3/))
      i04a=reshape((/(    i                    ,i=1,27)/),(/3,3,3/))
      c08a=reshape((/(CMPLX(-i,i)              ,i=1,27)/),(/3,3,3/))
      ch4a=reshape((/(ACHAR(IACHAR('a')+i)//' ',i=0,26)/),(/3,3,3/))
      i04b=reshape((/(    i                    ,i=1,27)/),(/3,3,3/))
      c08b=reshape((/(CMPLX(-i,i)              ,i=1,27)/),(/3,3,3/))
      ch4b=reshape((/(ACHAR(IACHAR('a')+i)//' ',i=0,26)/),(/3,3,3/))
      where(mask)
         i04a(:,:,3:1:-1)=
     -     SPREAD(i04a(1,:,:),dim    =i04a(2,1,1)
     -                       ,ncopies=i04a(3,1,1))
      elsewhere
         i04a(:,:,3:1:-1)=
     -     SPREAD(i04a(:,:,1),dim=-(-3),ncopies=3)
      endwhere

      where(mask)
         c08a(:,:,3:1:-1)=
     -     SPREAD(c08a(1,:,:),dim    =INT(IMAG(c08a(2,1,1)))
     -                       ,ncopies=INT(IMAG(c08a(3,1,1))))
      elsewhere
         c08a(:,:,3:1:-1)=
     -     SPREAD(c08a(:,:,1),dim=-(-3),ncopies=3)
      endwhere

      where(mask)
         ch4a(:,:,3:1:-1)= ch4a(:,:,3:1:-1)(1:1)//
     -     SPREAD(ch4a(1,:,:),
     -            dim    =IACHAR(ch4a(3,1,1)(1:1))-IACHAR('a')
     -           ,ncopies=IACHAR(ch4a(1,2,1)(1:1))-IACHAR('a'))
      elsewhere
         ch4a(:,:,3:1:-1)=  ch4a(:,:,3:1:-1)(1:1)//
     -     SPREAD(ch4a(:,:,1),
     -            dim=-(-3),ncopies=3)//ch4a(:,:,3:1:-1)(1:1)
      endwhere
      do k2=1,3
         do j2=1,3
            do i2=1,3
               dvt_it(i2,j2,k2)=i04b(1,i2,k2)
               dvt_xt(i2,j2,k2)=c08b(1,i2,k2)
               dvt_ct(i2,j2,k2)=ch4b(1,i2,k2)
            enddo
         enddo
      enddo
      do k=1,3
         do j=1,3
            do i=1,3
               if(mask(i,j,k)) then
                  i04b(i,j,4-k)=dvt_it(i,j,k)
                  c08b(i,j,4-k)=dvt_xt(i,j,k)
                  ch4b(i,j,4-k)=ch4b(i,j,4-k)(1:1)//dvt_ct(i,j,k)
               endif
            enddo
         enddo
      enddo
      do k2=1,3
         do j2=1,3
            do i2=1,3
               dvt_if(i2,j2,k2)=i04b(i2,j2,1)
               dvt_xf(i2,j2,k2)=c08b(i2,j2,1)
               dvt_cf(i2,j2,k2)=ch4b(i2,j2,1)
            enddo
         enddo
      enddo
      do k=1,3
         do j=1,3
            do i=1,3
               if(.NOT.mask(i,j,k)) then
                  i04b(i,j,4-k)=dvt_if(i,j,k)
                  c08b(i,j,4-k)=dvt_xf(i,j,k)
                  ch4b(i,j,4-k)=ch4b(i,j,4-k)(1:1)//dvt_cf(i,j,k)
               endif
            enddo
         enddo
      enddo
      if(SIZE(PACK(i04a,i04a.ne.i04b))/=0) then
         write(6,*) 'TRUE VALUE:',i04b
         write(6,*) 'CALC VALUE:',i04a
         error=1
      endif
      if(SIZE(PACK(c08a,c08a.ne.c08b))/=0) then
         write(6,*) 'TRUE VALUE:',c08b
         write(6,*) 'CALC VALUE:',c08a
         error=1
      endif
      if(SIZE(PACK(ch4a,ch4a.ne.ch4b))/=0) then
         write(6,*) 'TRUE VALUE:',ch4b
         write(6,*) 'CALC VALUE:',ch4a
         error=1
      endif
      if(error.eq.0) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
      endif
      stop
      end
