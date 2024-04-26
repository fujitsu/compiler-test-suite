      implicit type(bbb)(a-c)
      type aaa
        type(ccc),pointer :: a1
      endtype
      type bbb
        integer b1
      endtype
      type ccc
        integer c1
      endtype
      type (aaa) aaaa
      type (bbb) bbbb
      type (ccc) cccc
      print *,'ok'
      end
