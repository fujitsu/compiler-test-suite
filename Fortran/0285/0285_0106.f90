class(*),pointer :: ii(:)
integer,target::tgt(2)=2

ii=>tgt

associate(aa=>ii)
 select type(aa)
  type is(integer)
  if(all(aa==2)) print*,'pass'
 end select
end associate
end
