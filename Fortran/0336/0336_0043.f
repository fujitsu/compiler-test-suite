      logical  *4::mask(3,3,3)
      real     *8::c08b(3,3,3)
      real     *8::dvt_xt(3,3,3)
      mask=reshape((/(MOD(i,2)/=0              ,i=1,27)/),(/3,3,3/))

      do k=1,3
         do j=1,3
            do i=1,3
                  c08b(i,j,k)=0.0D0
                  dvt_xt(i,j,k)=1.0D0*(k+i+j)
            enddo
         enddo
      enddo
      do k=1,3
         do j=1,3
            do i=1,3
               if(mask(i,j,k)) then
                  c08b(i,j,4-k)=dvt_xt(i,j,k)
               endif
            enddo
         enddo
      enddo
      print *,c08b(1,:,3)
      stop
      end
