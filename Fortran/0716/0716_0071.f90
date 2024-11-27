call sub1()
call sub2()

end

subroutine sub1()

print *,[character(3):: "", "1",       ["12"],["12"//"3"]  ]
print *,[character(3):: "", "1", [     ["12"],["12"//"3"]] ]
print *,[character(3):: "",      ["1", ["12"],["12"//"3"]] ]

print *,[character(3)::["",      ["1", ["12"],["12"//"3"]]]]

end

subroutine sub2()

call s("aa")

contains
 subroutine s(a)
  character(*)::a
  print *,[character(*)::a]
 end subroutine

end subroutine
