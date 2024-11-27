subroutine sub(ia)
integer::ia(*)
print *,FINDLOC(ia,value=3)
end subroutine

call sub((/21,45,67,41,55/))
end
