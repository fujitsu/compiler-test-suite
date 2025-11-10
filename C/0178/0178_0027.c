#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <setjmp.h>
#include"004.h"

void test001() {
	int x = 0, y = 0, z = 0;

	switch(x){
		case 0:
			({
				while(y < 10){
					({ y++; z++; });
					if(z == 2) continue;
				}
			});
		case 1:
			break;
		case 2:
			break;
	}
	ichck(1, 0, x, "statement expression No.1 NG\n");
	ichck(1, 10, y, "statement expression No.1 NG\n");
	ichck(1, 10, z, "statement expression No.1 NG\n");
}

void test002() {
	int x = 0, y = 0 , z = 0;

	switch(x){
		case 1:
			break;
		case 2:
			break;
		default:
			for(y = 0; 
				({
					while(x < 10){
						if(z == 3) break;
						x++; z++;
					}
				}), y < 10;	y++){
				x++;
			}
	}
	ichck(2, 13, x, "statement expression No.2 NG\n");
	ichck(2, 10, y, "statement expression No.2 NG\n");
	ichck(2, 3, z, "statement expression No.2 NG\n");
}

int func1(int a, int b) {
	int c = a + b;
	int ret;
	if(c < 10){
		ret = func1(a, c);
	} else {
		ret = 10;
	}
	return ret;
}
void test003() {
	int x = 0, y = 0, z = 0;
	for(y = 0, 
		({
			z = func1(x + 1, y + 2);
			if(z == 10) goto INNER;
			z += 1;
			INNER:
			if(x == 0) goto OUTER;
		});
	 y < 10; y++){
		x++;
		OUTER:x++;
	}
	ichck(3, 19, x, "statement expression No.3 NG\n");
	ichck(3, 10, y, "statement expression No.3 NG\n");
	ichck(3, 10, z, "statement expression No.3 NG\n");
}

void test004() {
	int x = 0, z = 0;
	({
		x ++;
		z ++;
		x = x + z;
	});

	({
		do {
			z++; 
			if(z == 5) break;
			else x++;
		} while(z < 100);
		ichck(4, 5, z, "statement expression No.4 NG\n");
		ichck(4, 5, x, "statement expression No.4 NG\n");
		return;
	});

	confirm(4,"statement expression No.5 NG\n");
}

void test005() {
	int x = 0, y = 0, z = 0;

	for(y = 0; y < 10;
		({
			if(z > 5){
				ichck(5, 7, x, "statement expression No.5 NG\n");
				ichck(5, 6, y, "statement expression No.5 NG\n");
				ichck(5, 6, z, "statement expression No.5 NG\n");
				return;
			}
			z ++;
		}) , y++){
			x += 1;
	}
	confirm(5, "statement expression No.5 NG\n");
}

void test006() {
	int x = 0, y = 0, z = 0;
	({
		for(x = 0; x < 10; x++){
			switch(x){
				case 0:
					({
						z = x + y;
						z ++;
					});
					break;
				case 1:
					y = x + y + z;
					break;
				default:
					z = x + z;
			}
			if(z == 10){
				ichck(6, 4, x, "statement expression No.6 NG\n");
				ichck(6, 2, y, "statement expression No.6 NG\n");
				ichck(6, 10, z, "statement expression No.6 NG\n");
				return;
			}
		}
	});
	confirm(6, "statement expression No.6 NG\n");
}

void test007() {
	int x = 0, y, z = 0;

	switch(x){
		case 0:
			for(y = 0;
				({
					while(z < 10){
						switch(z){
							case 0:
								z++;
								break;
							case 1:
								z += 2;
								break;
							default:
								z += 3;
						}
					}
				}) , y < 10;y++){
					x += 1;
			}
		case 1:
			break;
		case 2:
			break;
	}
	ichck(7, 10, x, "statement expression No.7 NG\n");
	ichck(7, 10, y, "statement expression No.7 NG\n");
	ichck(7, 12, z, "statement expression No.7 NG\n");
}

void test008() {
	int x = 0, y, z = 0;

	switch(x){
		case 1:
			break;
		case 2:
			break;
		default:
			for(y = 0; 
				({
					typeof(x) w = 0;
					z = z + w++;
				}),
				({
					switch(z){
						case 0:
							z++;
							break;
						case 1:
							z += 2;
							break;
						default:
							z += 3;
					}
				}), y < 10 ;y++){
					x += 1;
			}
	}
	ichck(8, 10, x, "statement expression No.8 NG\n");
	ichck(8, 10, y, "statement expression No.8 NG\n");
	ichck(8, 30, z, "statement expression No.8 NG\n");
}

void test009() {
	int x = 0, y, z = 0;

	switch(x){
		case 1:
			break;
		case 2:
			break;
		default:
			for(y = 0;
				({
					switch(z){
						case 0:
							z++;
							break;
						case 2:
							goto INNER;
						default:
							z++;
					}
					INNER:
					if(y == 2){
						goto OUTER;
					}
				}) , y < 10;y++){
					x += 1;
			}
			OUTER:
			break;
	}
	ichck(9, 2, x, "statement expression No.9 NG\n");
	ichck(9, 2, y, "statement expression No.9 NG\n");
	ichck(9, 2, z, "statement expression No.9 NG\n");
}

void test010() {
	int x = 0, y, z = 0;

	for(y = 0, 
		({
			while(z < 10){
				int w = 5;
				if(x++ == 5) goto INNER;
				if(z == 5) continue;
				z += w;
			}
		});
	 y < 10; y++){
		INNER:
		x += 1;
	}
	ichck(10, 16, x, "statement expression No.10 NG\n");
	ichck(10, 10, y, "statement expression No.10 NG\n");
	ichck(10, 5, z, "statement expression No.10 NG\n");
}

void test011() {
	int x = 0, y = 0, z = 0;

	switch(x){
		case 1:
			break;
		case 2:
			break;
		default:
			({
				while(y < 10){
					({ y++; z++; });
					if(z == 2) goto INNER;
					printf("y = %d, z = %d\n", y, z);
				}
				INNER:z++;				
			});
			break;
	}

	ichck(11, 0, x, "statement expression No.11 NG\n");
	ichck(11, 2, y, "statement expression No.11 NG\n");
	ichck(11, 3, z, "statement expression No.11 NG\n");
}

void test012() {
	int x = 0, y, z = 0;
	jmp_buf env;

	switch(x){
		case 1:
			break;
		case 2:
			break;
		default:
			for(y = 0; y < 10;
				({
					while(z < 10){
						z++;
						if(z == 2){
							continue;
						}
						x++;
					};
					setjmp(env);
				}) , y++){
					x += 1;
			}
	}
	ichck(12, 19, x, "statement expression No.12 NG\n");
	ichck(12, 10, y, "statement expression No.12 NG\n");
	ichck(12, 10, z, "statement expression No.12 NG\n");
}

void test013() {
	int x = 0, y, z = 0;

	switch(x){
		case 0:
			for(y = 0; y < 10;
				({
					for(z = 0; z < 10; z++){
						z++;
						if(z == 5){
							goto INNER;
						}
					}
					INNER:z++;
				}) , y++){
					x += 1;
			}
			break;
		case 1:
			break;
		case 2:
			break;
	}
	ichck(13, 10, x, "statement expression No.13 NG\n");
	ichck(13, 10, y, "statement expression No.13 NG\n");
	ichck(13, 6, z, "statement expression No.13 NG\n");
}

void test014() {
	int x = 0, y, z = 0;

	switch(x){
		case 0:
			for(y = 0; y < 10;
				({
					for(z = 0; z < 10; z++){
						z++;
						if(z == 5){
							break;
						}
					}
					goto OUTER;
				}) , y++){
					x += 1;
			}
		case 1:
			break;
		case 2:
			break;
	}
	OUTER:

	ichck(14, 1, x, "statement expression No.14 NG\n");
	ichck(14, 0, y, "statement expression No.14 NG\n");
	ichck(14, 5, z, "statement expression No.14 NG\n");
}

void test015() {

	int x = 0, y = 0, z = 0;

	({
		++x == 0 ? y++ : x++;
	});
	({
		for(z = 0; z < 10; z++){
			if(z == 5){
				continue;
			}
			z++;
		}
		goto OUTER;
	});

	OUTER:

	ichck(15, 2, x, "statement expression No.15 NG\n");
	ichck(15, 0, y, "statement expression No.15 NG\n");
	ichck(15, 10, z, "statement expression No.15 NG\n");
}

void test016() {
	int x = 0, y, z = 0;

	switch(x){
		case 0:
			for(y = 0,
				({
					do{
						z++;
						if(z == 5){
							break;
						}
					} while(z < 10);
				}) ; y < 10; y++){
					x += 1;
			}
		case 1:
			break;
		case 2:
			break;
	}

	ichck(16, 10, x, "statement expression No.16 NG\n");
	ichck(16, 10, y, "statement expression No.16 NG\n");
	ichck(16, 5, z, "statement expression No.16 NG\n");
}


void test021() {
	int x,y,z;

	int a = ({x = 0; y = 1; z = 2;}) + 1;

	ichck(21, 0, x, "statement expression No.21 NG\n");
	ichck(21, 1, y, "statement expression No.21 NG\n");
	ichck(21, 2, z, "statement expression No.21 NG\n");
	ichck(21, 3, a, "statement expression No.21 NG\n");
}

int main(){

	header("GNU stat","Gnu Statement Expression test");
	test001();
	test002();
	test003();
	test004();
	test005();
	test006();
	test007();
	test008();
	test009();
	test010();
	test011();
	test012();
	test013();
	test014();
	test015();
	test016();
	test021();
	header("GNU stat","Gnu Statement Expression test");

}
