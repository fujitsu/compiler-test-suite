#include <stdio.h>
#include <stdarg.h>

int myprintf003 (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

int MYPRINTF (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, double));
	va_end(list);
}

int myprintf_010 (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, char *));
	va_end(list);
}

int myPRINTF (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

