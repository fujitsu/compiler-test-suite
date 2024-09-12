      program main
      call sub1()
      print *,'pass'
      end

      subroutine sub1()
       TYPE s1      
         integer i
       end type
       type (s1) :: istr
       type s2
         logical*4  l
       end type 
       type (s2) :: lstr
       type s3
         character*10 cha
       end type 
       type (s3) :: cstr
       character*10 errname
       errname='sub       '
       istr%i=10
       do i=1,200000
       select case(istr%i)
       case (1)
         call err(errname,1)
       case (2)
         call err(errname,2)
       case default
         exit                 
       end select  
       end do    
       if (i.ne.1) call err(errname,3)  

       lstr%l=.true.
       do i=1,200000
       select case(lstr%l)
       case (.FALSE.)
         call err(errname,4)
       case (.TRUE.)
         exit                 
       case default
         call err(errname,5)
       end select  
       end do    
       if (i.ne.1) call err(errname,6)  

       cstr%cha='a'
       do i=1,200000
       select case(cstr%cha)
       case ('aaaaaaaaaa')
         call err(errname,7)
       case ('aaaaaaa')
         Exit                 
       case default
       end select  
       cstr%cha(i+1:i+1)='a'
       end do    
       if (i.ne.7) call err(errname,8)  
      end

      subroutine err(cha,i)
      character*10 cha
      print *,cha,'     err   no- ',i
      end
