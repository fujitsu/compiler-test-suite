      type aaa
        type(ccc),pointer :: c1
      endtype
      type ccc
        type(aaa),pointer :: a1
      endtype
      type(aaa),target:: a
      type(ccc),target:: c
      a%c1 => c
      c%a1 => a
      end
