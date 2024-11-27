character(len=4),target :: ch='pass'

class(*),pointer::obj,obj2
integer,target::tgt =5

obj=>tgt
obj2=>ch

 nam2:select type(aa=>obj)
 type is(integer)
  print*,aa

  nam3:select type(aa=>obj2)
  type is(character(*))
   print*,aa
  end select nam3

  print*,aa
 end select nam2

end
