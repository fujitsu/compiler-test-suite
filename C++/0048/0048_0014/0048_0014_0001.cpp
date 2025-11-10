%:include <cstdio>

%:define VALNAME(a, b) a%:%:b

void sub1() <%  
  int VALNAME(arr, ay)<:5:> = <%0, 1, 2, 3, 4%>;
  int tmp1 = array<:1:> bitand array<:2:>;
  int tmp2 = array<:2:> bitor  array<:3:>;
  int tmp3 = array<:3:> xor    array<:4:>;
  std::printf("%d %d %d\n", tmp1, tmp2, tmp3);

  tmp1 and_eq array<:1:>;
  tmp2 or_eq  array<:4:>;
  tmp3 xor_eq array<:0:>;
  std::printf("%d %d %d\n", tmp1, tmp2, tmp3);

  std::printf("%d\n", compl array<:1:>);
  std::printf("%d\n", not array<:0:>);
%>

static bool func(int a, int b, int c, int d, bool f) <%
  if ((a not_eq b and
       c not_eq d) or
      f) <%
    return true;
  %>

  return false;
%>

void sub2() <%
  if (func(1, 2, 3, 4, true)) <%
    std::printf("OK\n");
  %>
%>
