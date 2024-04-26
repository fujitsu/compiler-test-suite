character :: acc, dir
logical :: opnd
integer :: record_length, this_unit
inquire (unit=8, access=acc, err=200)
inquire (this_unit, opened=opnd, direct=dir)
inquire (file="myfile.dat", recl=record_length)
200 continue
print *,'pass'
end
