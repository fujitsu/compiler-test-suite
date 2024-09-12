character,target :: a = 'a'
class(*), pointer ::cptr
cptr=>a
associate(a=>a, b=>a, c=>a)
 associate (b=>cptr)
 select type(d=>b)
  type is (character(len=*))
   print *,'PASS'
 end select
 end associate
end associate
end
