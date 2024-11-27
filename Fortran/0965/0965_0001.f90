class(*),pointer::obj
integer,target::tgt =5

obj=>tgt

nam1:select type(aa=>obj)
class default
 nam2:select type(aa=>obj)
 type is(integer)
  print*,'pass'
 end select nam2
end select nam1

end
