      call sub1()
      call sub2()
      print *,'pass'
      end

      subroutine sub1()
      character*4 arr(10)
      type ty1
        character*4 a
      end type
      type (ty1) :: str(10)
      str%a='(i2)'
      arr='(i2)'
      call sub11(str)
      call sub12(arr)
      contains
       subroutine sub11(sss)
       type (ty1) ::sss(:)
       integer b(10),c(10)
       data b /1,2,3,4,5,6,7,8,9,10/
       j=33
       write (j,sss%a) b
       rewind j
       read (j,sss%a) c
       do i=1,10 ; if (c(i).ne.i) print *,'err' ;end do
       j=j+1
       write (j,sss(1:10)%a) b
       rewind j
       read (j,sss(1:10)%a) c
       do i=1,10 ; if (c(i).ne.i) print *,'err' ;end do
       end subroutine
       subroutine sub12(aaa)
       character*4  aaa(:)
       integer b(10),c(10)
       data b /1,2,3,4,5,6,7,8,9,10/
       j=33
       write (j,aaa(b)) b
       rewind j
       read (j,aaa(1:10)) c
       do i=1,10 ; if (c(i).ne.i) print *,'err' ;end do
       end subroutine
      end
      subroutine sub2()
      character*4 arr(10)
      type ty1
        character*4 a
      end type
      type (ty1) :: str(10)
      str%a='(i2)'
      arr='(i2)'
      call sub21(str)
      call sub22(arr)
      contains
       subroutine sub21(sss)
       type (ty1) ::sss(:)
       integer b(10),c(10)
       data b /1,2,3,4,5,6,7,8,9,10/
       write (sss%a,*) b
       write (sss(1:10)%a,*) b
       end subroutine
       subroutine sub22(aaa)
       character*4  aaa(:)
       integer b(10),c(10)
       data b /1,2,3,4,5,6,7,8,9,10/
       write (aaa,*) b
       write (aaa(1:10),*) b
       end subroutine
      end
