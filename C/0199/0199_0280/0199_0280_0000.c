#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int);
extern unsigned int (*v2) (signed int);
extern void v3 (unsigned char, signed int, signed char);
extern void (*v4) (unsigned char, signed int, signed char);
extern signed char v5 (signed int, signed short, unsigned int, signed int);
extern signed char (*v6) (signed int, signed short, unsigned int, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
unsigned char v9 (signed short, unsigned char, signed char, unsigned short);
unsigned char (*v10) (signed short, unsigned char, signed char, unsigned short) = v9;
extern signed short v11 (signed char, signed int, signed int);
extern signed short (*v12) (signed char, signed int, signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned int v17 (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned int v19 (signed char, signed char, signed short, signed short);
extern unsigned int (*v20) (signed char, signed char, signed short, signed short);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern signed short v27 (signed int, unsigned short, unsigned int, signed char);
extern signed short (*v28) (signed int, unsigned short, unsigned int, signed char);
extern signed short v29 (signed int, signed short, signed char);
extern signed short (*v30) (signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned int v32 = 0U;
unsigned char v31 = 3;

signed char v21 (void)
{
{
for (;;) {
unsigned short v36 = 4;
unsigned short v35 = 3;
signed short v34 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v37, unsigned char v38, signed char v39, unsigned short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -3;
unsigned int v42 = 7U;
signed int v41 = -3;
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
signed int v46;
unsigned int v47;
v46 = -4 - -4;
v47 = v1 (v46);
history[history_index++] = (int)v47;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
