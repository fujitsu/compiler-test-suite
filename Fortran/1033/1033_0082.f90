      program main
      integer a(5),b(5)
      data b  /1,2,3,4,5/
      equivalence (a,b)
      a=a+b                                                             
      if (any(a/=(/2,4,6,8,10/))) print *,'error ',a
      print *,'pass'
      end                                                               
