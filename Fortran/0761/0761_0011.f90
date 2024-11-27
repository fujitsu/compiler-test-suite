type :: t(k)
   integer,kind :: k
  procedure(type(t(k))), pointer, nopass :: t1
end type
end
