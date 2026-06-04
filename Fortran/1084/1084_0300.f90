        type :: t1
          class(*),pointer::a                  
          class(*),allocatable::b                 
        end type t1
        class(*),pointer::a                  
        class(*),allocatable::b                 
        type(t1)::obj                              
        type(t1)::obj2                              
        character(len=4) ::ch
        character(len=3) ::ch2
        ch='upol'
        ch2='abc'
        allocate(obj%a,source=ch)
        allocate(obj2%b,source=ch2)
        allocate(a,source=ch)
        allocate(b,source=ch2)
        select type(A=>obj%a)        
         class default
          print*,"201"              
         type is(character(*))
          if(len(A(1:2))/=2)print*,"106",len(A(1:2) )  
          if(A(1:2).ne."up")print*,"107",A(1:2)   
          if(len(A)/=4)print*,"108"
         end select
        select type(A=>obj2%b)        
         class default
          print*,"221"              
         type is(character(*))
          if(len(A(1:2))/=2)print*,"126",len(A(1:2) )  
          if(A(1:2).ne."ab")print*,"127",A(1:2)   
          if(len(A)/=3)print*,"128"
         end select
         select type(A=>a)        
         class default
          print*,"201"              
         type is(character(*))
          if(len(A(1:2))/=2)print*,"136",len(A(1:2) )  
          if(A(1:2).ne."up")print*,"137",A(1:2)   
          if(len(A)/=4)print*,"138"
         end select
        select type(A=>b)        
         class default
          print*,"241"              
         type is(character(*))
          if(len(A(1:2))/=2)print*,"146",len(A(1:2) )  
          if(A(1:2).ne."ab")print*,"147",A(1:2)   
          if(len(A)/=3)print*,"148"
         end select
        print *, 'pass'
        end

