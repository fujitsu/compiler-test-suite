      program main
      integer(kind=4)::a(5,5),b(5),error/0/
      data a/ 1, 4, 2, 5, 3 &
            , 6, 9, 7,10, 8 &
            ,11,14,12,15,13 &
            ,16,19,17,20,18 &
            ,21,24,22,25,23 /
      data b/1,4,2,5,3/            

      a(b,:) = a(:,:)

      do j=1,5
         do i=1,5
            if(a(i,j) .ne. i+(j-1)*5) then
               error = error +1
            endif
         enddo
      enddo
      if(error /= 0) then
         write(6,*) '*** NG ***'
         write(6,*) 'calc value : ',a
      else
         write(6,*) '*** OK ***'
      endif
      end
