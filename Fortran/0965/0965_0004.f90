class(*),pointer::obj
integer,target::tgt =5

obj=>tgt

 select type(aa2=>obj)
 type is(integer)
  print*,'pass',aa2
 end select 

end
