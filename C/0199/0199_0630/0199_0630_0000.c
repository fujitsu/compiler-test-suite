#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, signed short);
extern unsigned char (*v2) (signed short, signed short);
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
extern unsigned int v5 (unsigned short, signed char, unsigned char, signed char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v7 (unsigned short, unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned short, unsigned int, unsigned short);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern unsigned int v11 (signed int, signed char);
extern unsigned int (*v12) (signed int, signed char);
extern unsigned short v13 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned int, signed char, unsigned char, unsigned int);
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
extern signed int v17 (signed short, signed char, unsigned int);
extern signed int (*v18) (signed short, signed char, unsigned int);
extern unsigned char v19 (signed int, unsigned int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned int, unsigned char);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed int v32 = 3;
signed int v31 = 0;

signed char v23 (void)
{
{
for (;;) {
signed short v36 = 2;
signed char v35 = 0;
unsigned int v34 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 1;
unsigned int v39 = 3U;
signed int v38 = -4;
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
signed short v43;
signed short v44;
unsigned char v45;
v43 = -3 - 2;
v44 = 0 - -2;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
