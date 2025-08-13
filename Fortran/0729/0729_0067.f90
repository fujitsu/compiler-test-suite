  character*20 r,rr
  character,pointer::rrr(:)

      i = 13

      rr='|'// trim(image_blk(i))// '|'
      write(102,*) rr
      rrr=>      image_c(i)
      write(102,*) '|',rrr,'|'
      rewind 102
      read(102,'(a)') r
      if (r/=' |13|')write(6,*) "OK"
      read(102,'(a)') r
      if (r/=' |13|')write(6,*) "OK"
      print *,'pass'

 contains
   function image_blk(int) result(str)
      integer, intent(in) :: int
      character(len=12)   :: str

      write(str,"(i12)") int
      str = adjustl(str)
   end function image_blk

   function image_c(int) result(str)
      integer, intent(in) :: int
      character, dimension(:), pointer :: str
      character(len=12) :: tmp

      write(tmp,"(i12)") int
      tmp = adjustl(tmp)
      lt = len_trim(tmp)
      allocate (str(lt))
      str = (/ (tmp(i:i), i = 1, lt) /)
   end function image_c
   end
