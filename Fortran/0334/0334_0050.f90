
      integer(kind=4),parameter,dimension(  5)    ::i4_s=(/1,2,3,4,5/)
      integer(kind=2),parameter,dimension(  5)    ::i2_s=(/1,2,3,4,5/)
      integer(kind=4)          ,dimension(  5,  5)::i8_va,i8_vb
      integer(kind=4)          ,dimension(  5,  5)::i8_sa,i8_sb
      integer(kind=4)          ,dimension(0:4,0:4)::i8_dvt
      i8_va(i4_s(5:1:-1),:)=0
      i8_vb(:,i2_s(5:1:-1))=RESHAPE((/((/(i,i=1,5)/),j=1,5)/),(/5,5/))
      i8_va(i4_s,:)= &
               i8_va(:,i2_s)+i8_vb((i4_s+i2_s)/2,i4_s-1+int(cos(0.0)))
      do j=1,5
         do i=5,1,-1
            i8_sa(i4_s(i),j)=0
         end do
      enddo   
      do j=5,1,-1
         do i=1,5
            i8_sb(i,i2_s(j))=1+mod(((i-1)+(j-1)*5),5)
         enddo
      enddo
      do j=0,4
         do i=0,4
            i8_dvt(i,j)=            &
              i8_sa(i+1,i2_s(j+1))+ &
              i8_sb((i4_s(i+1)+i2_s(i+1))/2,i4_s(j+1)-1+int(cos(0.0)))
         enddo
      enddo
      do j=0,4
         do i=0,4
            i8_sa(i4_s(i+1),j+1)=i8_dvt(i,j)
         enddo
      enddo
      if(SIZE(PACK(i8_va,mask=i8_va .ne. i8_sa)) .eq. 0) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
         write(6,*) 'true value:i8_va(5,5)=',i8_va
         write(6,*) 'calc value:i8_sa(5,5)=',i8_sa
         write(6,*) 'true value:i8_vb(5,5)=',i8_vb
         write(6,*) 'calc value:i8_sb(5,5)=',i8_sb
      endif
      stop
      end
