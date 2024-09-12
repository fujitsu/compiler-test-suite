       type gen
         integer ,pointer:: p
         integer ,allocatable:: a
       end type

       interface gen

       function pfun(d1,d2)
       integer ,pointer:: d1
       integer ,pointer:: d2
       end function

       function afun(d3,d4)
       integer ,allocatable:: d3
       integer ,pointer:: d4
       end function

      end interface
      type(gen):: z
      integer ,pointer :: ptr
      integer ,allocatable :: alc
      allocate(ptr)
      allocate(alc)
      ptr=5
      alc=6
      z=gen( ptr,alc )
      if(z%p .ne. 5)print*,"101"  
      if(z%a .ne. 6)print*,"102"  
      if(gen(alc,ptr) .ne. 1)print*,"103"
      print *,'pass'
      end

     function pfun(d1,d2)
     integer ,pointer:: d1
     integer ,pointer:: d2
     pfun=d1+d2
     end function

     function afun(d3,d4)
     integer ,allocatable:: d3
     integer ,pointer:: d4
     afun=d3-d4
     end function
