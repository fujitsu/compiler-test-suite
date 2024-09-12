      real,dimension(50,13,13):: a,b,aa,bb

      a=0.
      b=2.
      do 30 i=1,10
      do 30 j=1,10
        a(i,1,1) = b(1,1,i) + 1
        b(1,j,1) = a(1,j,1) + 1
 30       continue

      aa=0.
      bb=2.
      do 50 i=1,10
      do 50 j=1,10
        aa(i,1,1) = bb(1,1,i) + 1
        bb(1,j,1) = aa(1,j,1) + 1
 50       continue

      do i=1,13
        do j=1,13
          do k=1,50
            if((a(k,j,i).ne.aa(k,j,i)).or.(b(k,j,i).ne.bb(k,j,i)))then
              print*,a(k,j,i),aa(k,j,i),b(k,j,i),bb(k,j,i)
              print*,'NG'
              stop
            endif
          enddo
        enddo
      enddo
      print*,'OK'
      end
