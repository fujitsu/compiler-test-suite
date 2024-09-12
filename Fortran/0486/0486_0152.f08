  1          subroutine s1()
  2          character(2),target ::t(5)=['11','22','33','44','55']
  3          integer::k=2
  4          integer::l=1
  5          call ss(t(:)(l:))
  6          call ss(t(:)(1:2))
  7         contains
  8         subroutine ss(a)
  9          character(*)::a(5)
10          if(len(a).ne.2)print*,"101",len(a)
11          if(loc(a).ne.loc(t))print*,"102"
12          if (any(a /= ['11','22','33','44','55'])) print *,202
13         end subroutine
14         end subroutine
15         call s1()
16         print *,'pass'
17         end
