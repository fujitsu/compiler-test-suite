      call aaaaa
      call bbbbb
      call ccccc
      call ddddd
      print *,'pass'
      contains
      subroutine aaaaa
      integer*1 a(10) , b(20),i
      do i=1,1
      a(0+(/(i,i=1,10)/))=(/(i,i=1,10)/)
      end do 
      if(ubound(b,dim=1).ne.20) call errtra
      if(size(pack((/ubound((/b/),dim=1)/),(/ubound((/b/),dim=1)/).ne.
     1(/20/))).ne.0) call errtra
      if(size(pack((/(i,i=1,ubound((/b/),dim=1))/),
     1             (/(i,i=1,ubound((/b/),dim=1))/)
     1    .ne.(/(i,i=1,20)/))).ne.0) call errtra
      if(size(pack((/(i,i=1,bit_size((/b/)))/),
     1             (/(i,i=1,bit_size((/b/)))/)
     1    .ne.(/(i,i=1,bit_size(i))/)))
     1    .ne.0) call errtra
      end subroutine
      subroutine bbbbb
      integer*2 a(10) , b(20),i
      do i=1,1
      a(0+(/(i,i=1,10)/))=(/(i,i=1,10)/)
      end do 
      if(ubound(b,dim=1).ne.20) call errtra
      if(size(pack((/ubound((/b/),dim=1)/),(/ubound((/b/),dim=1)/).ne.
     1(/20/))).ne.0) call errtra    
      if(size(pack((/(i,i=1,ubound((/b/),dim=1))/),
     1             (/(i,i=1,ubound((/b/),dim=1))/)
     1    .ne.(/(i,i=1,20)/))).ne.0) call errtra
      if(size(pack((/(i,i=1,bit_size((/b/)))/),
     1             (/(i,i=1,bit_size((/b/)))/)
     1    .ne.(/(i,i=1,bit_size(i))/)))
     1    .ne.0) call errtra
      end subroutine
      subroutine ccccc
      integer a(10) , b(20)
      do i=1,1
      a(0+(/(i,i=1,10)/))=(/(i,i=1,10)/)
      end do 
      if(ubound(b,dim=1).ne.20) call errtra
      if(size(pack((/ubound((/b/),dim=1)/),(/ubound((/b/),dim=1)/).ne.
     1(/20/))).ne.0) call errtra
      if(size(pack((/(i,i=1,ubound((/b/),dim=1))/),
     1             (/(i,i=1,ubound((/b/),dim=1))/)
     1    .ne.(/(i,i=1,20)/))).ne.0) call errtra
      if(size(pack((/(i,i=1,bit_size((/b/)))/),
     1             (/(i,i=1,bit_size((/b/)))/)
     1    .ne.(/(i,i=1,bit_size(i))/)))
     1    .ne.0) call errtra
      end subroutine
      subroutine ddddd
      integer*8 a(10) , b(20),i
      do i=1,1
      a(0+(/(i,i=1,10)/))=(/(i,i=1,10)/)
      end do 
      if(ubound(b,dim=1).ne.20) call errtra
      if(size(pack((/ubound((/b/),dim=1)/),(/ubound((/b/),dim=1)/).ne.
     1(/20/))).ne.0) call errtra    
      if(size(pack((/(i,i=1,ubound((/b/),dim=1))/),
     1             (/(i,i=1,ubound((/b/),dim=1))/)
     1    .ne.(/(i,i=1,20)/))).ne.0) call errtra
      if(size(pack((/(i,i=1,bit_size((/b/)))/),
     1             (/(i,i=1,bit_size((/b/)))/)
     1    .ne.(/(i,i=1,bit_size(i))/)))
     1    .ne.0) call errtra
      end subroutine
      end
