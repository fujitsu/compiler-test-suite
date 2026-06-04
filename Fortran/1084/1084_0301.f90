        type :: t1
          class(*),allocatable::a                  
        end type t1
        type(t1)::obj                              
        type(t1)::obj2                              
        character(len=4) ::ch
        character(len=3) ::ch2
        ch='upol'
        ch2='abc'
        allocate(obj%a,source=ch)
        allocate(obj2%a,source=ch2)
        select type(A=>obj%a)        
         class default
          print*,"201"              
         type is(character(*))
          if(len(A(1:2))/=2)print*,"106",len(A(1:2) )  
          if(A(1:2).ne."up")print*,"107",A(1:2)   
          if(len(A)/=4)print*,"108"
           select type(A=>obj2%a)        
             class default
                print*,"201"              
             type is(character(*))
                if(len(A(1:2))/=2)print*,"106",len(A(1:2) )  
                if(A(1:2).ne."ab")print*,"107",A(1:2)   
                if(len(A)/=3)print*,"108"
           end select
          if(len(A(1:2))/=2)print*,"126",len(A(1:2) )  
          if(A(1:2).ne."up")print*,"127",A(1:2)   
          if(len(A)/=4)print*,"137"
         end select
        print *, 'pass'
        end

