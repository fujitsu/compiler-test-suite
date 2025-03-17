#include <stdio.h>

long Nerrs = 0;
long Nerr_items = 0;
long Nerrs_this_case = 0;
long Nremarks = 0;
long Nsuccess = 0;
long Nsuccess_items = 0;
char last_char_printed = 0;

void pr_ok (const char *s)
{
	char c;
	fputs(s, stdout);
	while (*s != '\0')
		c = *s++;
	last_char_printed = c;
	fflush(stdout);
}

void begin_case (const char *s)
{
	Nerrs_this_case = Nerr_items;
}

void end_case (const char *s)
{
	if (last_char_printed != '\n')
		pr_ok("ok\n");
	if (Nerrs_this_case == Nerr_items)
		{
		++Nsuccess;
		pr_ok("#PASSED:  ");  
		}
	else
		{
		++Nerrs;
		pr_ok("#FAILED:  ");  
		}
	pr_ok(s);
	pr_ok("\n");
}

static void s_13p51()
{
	begin_case("s_13p51");
	static int a[2] = {1000, 2000};
	static char b[2][5] = {"1234", "5678"};
	end_case("s_13p51");
}

static void s_13p52()
{
	begin_case("s_13p52");
	static char b[2][5] = {"1234", "5678"};
	static char c[2][6] = {"1234", "5678"};
	end_case("s_13p52");
}
int main()
{
     s_13p51();
     s_13p52();
}
