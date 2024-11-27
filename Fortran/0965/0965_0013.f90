type tt
 character :: ch='b'
end type

class(tt),pointer::obj2(:,:)

class(tt),allocatable,target :: tgt2(:,:)

allocate(tgt2(3,5))

obj2=>tgt2

  nam3:select type(aa=>obj2)
  type is(tt)
   print*,'pass'
  end select nam3

end
