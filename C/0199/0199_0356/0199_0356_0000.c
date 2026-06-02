#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed short);
extern void (*v2) (signed int, signed short);
extern signed int v3 (signed int, unsigned char, unsigned short);
extern signed int (*v4) (signed int, unsigned char, unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern unsigned int v11 (signed short, unsigned char);
extern unsigned int (*v12) (signed short, unsigned char);
unsigned char v13 (signed char, signed short, signed char);
unsigned char (*v14) (signed char, signed short, signed char) = v13;
extern signed char v15 (unsigned int, signed int, signed int, signed int);
extern signed char (*v16) (unsigned int, signed int, signed int, signed int);
extern signed char v17 (signed int, signed short, unsigned short);
extern signed char (*v18) (signed int, signed short, unsigned short);
extern unsigned int v19 (unsigned short, signed char);
extern unsigned int (*v20) (unsigned short, signed char);
extern unsigned char v21 (unsigned char);
extern unsigned char (*v22) (unsigned char);
extern unsigned char v23 (signed int, unsigned short, signed char, unsigned char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v25 (unsigned char, signed short, signed int, unsigned int);
extern unsigned short (*v26) (unsigned char, signed short, signed int, unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed int v32 = 2;
unsigned char v31 = 7;

unsigned char v13 (signed char v34, signed short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 7;
unsigned int v38 = 3U;
unsigned short v37 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v42;
signed short v43;
v42 = 3 + v32;
v43 = -3 - 0;
v1 (v42, v43);
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
