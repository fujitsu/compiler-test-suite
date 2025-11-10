extern int printf(const char *str, ...);

void testfunc(short s, float X, char C, long long LL, int I, double D) {
	printf("%d, %f, %d, %lld, %d, %f\n", s, X, C, LL, I, D);
}

#ifdef ORIGINAL
int main() {
	testfunc(12, 1.245f, 'x', 123456677890LL, -10, 45e14);
        return 0;
}
#else
void sub1()
{
	testfunc(12, 1.245f, 'x', 123456677890LL, -10, 45e14);
}
#endif
