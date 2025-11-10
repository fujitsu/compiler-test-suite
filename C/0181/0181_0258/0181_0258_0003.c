unsigned long window_size = 0x10000;

unsigned test_4() {
	return (unsigned)window_size;
}

extern int printf(const char *str, ...);

#ifdef ORIGINAL
int main() {
	printf("%d\n", test());
	return 0;
}
#else
void sub4()
{
	printf("%d\n", test_4());
}
#endif
