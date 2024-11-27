intrinsic get_command
intrinsic get_command_argument
intrinsic get_environment_variable
intrinsic command_argument_count

call test01(command_argument_count())
print *,"pass"
end

subroutine test01(i)
 integer*8 :: len1, sta1, len1_1, sta1_1
 integer :: len2, sta2, num, num2, sta2_1, len2_1
 integer :: len3, sta3, sta4
 integer :: i
 logical :: t_name=.true.,t_name2=.false.

 character*750 :: val1,val1_1
 character*750 :: val2
 character*700 :: com,com2

 num=i
 num2=num

 call get_command()

 call get_command(com)

 call get_command(com,len1)
 if (len1.ne.len_trim(com)) write(6,*) "NG"

 call get_command(com,len1,sta1)
 if (len1.ne.len_trim(com)) write(6,*) "NG"
 if (sta1.ne.0) write(6,*) "NG"

 call get_command(command=com)

 call get_command(length=len1)
 if (len1.ne.len_trim(com)) write(6,*) "NG"

 call get_command(status=sta1)
 if (sta1.ne.0) write(6,*) "NG"

 call get_command(command=com,status=sta1)
 if (sta1.ne.0) write(6,*) "NG"

 call get_command(length=len1,status=sta1)
 if (len1.ne.len_trim(com)) write(6,*) "NG"
 if (sta1.ne.0) write(6,*) "NG"

 call get_command(status=sta1_1,length=len1_1,command=com2)
 if (com.ne.com2) write(6,*) "NG"
 if (len1_1.ne.len_trim(com2)) write(6,*) "NG"
 if (len1.ne.len1_1) write(6,*) "NG"
 if (sta1_1.ne.sta1) write(6,*) "NG"
 if (sta1_1.ne.0) write(6,*) "NG"

 call get_command_argument(num)
 if (num.ne.command_argument_count()) write(6,*) "NG"

 call get_command_argument(num,val1)
 if (num.ne.command_argument_count()) write(6,*) "NG"

 call get_command_argument(num,val1,len2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (len2.ne.len_trim(val1)) write(6,*) "NG"

 call get_command_argument(num,val1,len2,sta2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (len2.ne.len_trim(val1)) write(6,*) "NG"
 if (sta2.ne.0) write(6,*) "NG"

 call get_command_argument(number=num,value=val1)
 if (num.ne.command_argument_count()) write(6,*) "NG"

 call get_command_argument(number=num,value=val1,length=len2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (len2.ne.len_trim(val1)) write(6,*) "NG"

 call get_command_argument(number=num,value=val1,length=len2,status=sta2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (len2.ne.len_trim(val1)) write(6,*) "NG"
 if (sta2.ne.0) write(6,*) "NG"

 call get_command_argument(number=num,length=len2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (len2.ne.len_trim(val1)) write(6,*) "NG"

 call get_command_argument(number=num,status=sta2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (sta2.ne.0) write(6,*) "NG"

 call get_command_argument(number=num,value=val1,status=sta2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (sta2.ne.0) write(6,*) "NG"

 call get_command_argument(number=num,length=len2,status=sta2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (len2.ne.len_trim(val1)) write(6,*) "NG"
 if (sta2.ne.0) write(6,*) "NG"

 call get_command_argument(num,val1)
 if (num.ne.command_argument_count()) write(6,*) "NG"

 call get_command_argument(num,val1,len2)
 if (num.ne.command_argument_count()) write(6,*) "NG"
 if (len2.ne.len_trim(val1)) write(6,*) "NG"

 call get_command_argument(num2,val1_1,len2_1,sta2_1)
 if (num2.ne.command_argument_count()) write(6,*) "NG"
 if (num2.ne.num) write(6,*) "NG"
 if (val1.ne.val1_1) write(6,*) "NG"
 if (len2.ne.len2_1) write(6,*) "NG"
 if (len2_1.ne.len_trim(val1)) write(6,*) "NG"
 if (sta2_1.ne.0) write(6,*) "NG"
 if (sta2.ne.sta2_1) write(6,*) "NG"

 call get_environment_variable('', val2, len3, sta3, t_name)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('')

 call get_environment_variable('', val2)
 if (val2.ne.'') write(6,*) "NG"

 call get_environment_variable('', val2, len3)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"

 call get_environment_variable('', val2, len3, sta3)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('', value=val2)
 if (val2.ne.'') write(6,*) "NG"

 call get_environment_variable('', length=len3)
 if (len3.ne.len_trim(val2)) write(6,*) "NG"

 call get_environment_variable('', status=sta3)
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('', trim_name=t_name)

 call get_environment_variable('', val2, len3, sta3, t_name2)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('TZ', val2, len3, sta3, t_name)
 if (len3.ne.len_trim(val2)) write(6,*) "NG"

 call get_environment_variable('', val2)
 if (val2.ne.'') write(6,*) "NG"

 call get_environment_variable('TZ', val2, len3)
 if (len3.ne.len_trim(val2)) write(6,*) "NG"

 call get_environment_variable('TZ', val2, len3, sta4)
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.sta4) write(6,*) "NG"

 call get_environment_variable('TZ', val2, len3, sta3, t_name2)
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.sta4) write(6,*) "NG"

 call get_environment_variable('ABCDE', val2, len3, sta3, t_name)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('ABCDE', val2)
 if (val2.ne.'') write(6,*) "NG"

 call get_environment_variable('ABCDE', val2, len3)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"

 call get_environment_variable('ABCDE', val2, len3, sta3)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('ABCDE', val2, len3, sta3, t_name2)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', val2, len3, sta3, t_name)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB', val2)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"

 call get_environment_variable('CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC', val2, len3)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"

 call get_environment_variable('DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', val2, len3, sta3)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

 call get_environment_variable('EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE', val2, len3, sta3, t_name2)
 if (val2.ne.'') write(6,*) "NG"
 if (len3.ne.len_trim(val2)) write(6,*) "NG"
 if (sta3.ne.1) write(6,*) "NG"

end
