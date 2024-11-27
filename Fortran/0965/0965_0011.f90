class(*),pointer::obj(:)
integer,target::tgt(5) =5

obj=>tgt

 nam2:select type(aa2=>obj)
 type is(integer)
  print*,'pass'
 end select nam2

end
