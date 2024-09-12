      program main
      implicit none
      external ifunc,sub
      integer ans /0/        
      call sub(ifunc,ans)
      if (ans.ne. 8) print *,'ng'
      print *,'ok'
      end
      subroutine sub(ifunc,ans)
      implicit none
      external ifunc
      integer c     
      integer ans        
      ans  = ans +1       
      call  ifunc(ans) 
      call  if(ifunc,ans) 
      end
      subroutine ifunc(ans)
      integer ans        
      ans  = ans +1       
      end
      subroutine funx(ifunc,ans)
      external ifunc
      integer ans        
      ans  = ans +1       
      end
      subroutine fun(ifunc,ans)
      implicit none
      integer ans        
      ans  = ans +1       
      call  ifunc(ans) 
      call  funx(ifunc,ans) 
      end
      subroutine func(ifunc,ans)
      implicit none
      external ifunc
      integer ans        
      ans  = ans +1       
      call  fun(ifunc,ans) 
      end
      subroutine if(ifunc,ans)
      implicit none
      external ifunc
      integer ans        
      ans  = ans +1       
      call  func(ifunc,ans) 
      call  ifunc(ans) 
      end
