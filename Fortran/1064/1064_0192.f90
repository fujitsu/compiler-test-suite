k=1
select case (k)
  case (1)
    k=2
  case (2)
    k=3
end select
if (k==2) print *,'pass'
end
