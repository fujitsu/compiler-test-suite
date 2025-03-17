#include <stdio.h>

void pr_ok (const char *s)
{
	fputs(s, stdout);
	fflush(stdout);
}

void end_case (const char *s)
{
        pr_ok("#PASSED:  "); 
	pr_ok(s);
	pr_ok("\n");
}

static void s_13p51()
{
	static char b[2][5] = {"1234", "5678"};
	end_case("ok");
	end_case("s_13p51");
}
int main()
{
     s_13p51();
}
