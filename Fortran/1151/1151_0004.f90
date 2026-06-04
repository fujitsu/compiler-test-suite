character(len=4),target :: ch='pass'

class(*),pointer::obj,obj2
integer,target::tgt =5

obj=>tgt
obj2=>ch

 nam2:select type(aaa=>obj)
 type is(integer)
  print*,aaa
  nam3:select type(obj2)
  type is(character(*))
   print*,obj2
  end select nam3

  print*,aaa
 end select nam2

end
