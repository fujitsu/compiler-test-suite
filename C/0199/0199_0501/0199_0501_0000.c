#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned int v3 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern signed short v7 (signed char, unsigned short, signed int);
extern signed short (*v8) (signed char, unsigned short, signed int);
signed int v9 (void);
signed int (*v10) (void) = v9;
signed char v11 (unsigned char, signed char, unsigned int, signed int);
signed char (*v12) (unsigned char, signed char, unsigned int, signed int) = v11;
extern unsigned int v13 (signed char, signed short);
extern unsigned int (*v14) (signed char, signed short);
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
extern unsigned char v17 (unsigned short, unsigned short, signed char);
extern unsigned char (*v18) (unsigned short, unsigned short, signed char);
extern unsigned short v19 (signed int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned short);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed char v23 (signed int, unsigned short, unsigned char, signed char);
extern signed char (*v24) (signed int, unsigned short, unsigned char, signed char);
extern signed short v25 (unsigned short, unsigned int, unsigned char, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char, signed char);
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned short v32 = 7;
signed short v31 = -3;

signed char v11 (unsigned char v34, signed char v35, unsigned int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
signed char v39 = 1;
unsigned char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned char v43 = 1;
signed int v42 = 1;
signed int v41 = -1;
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
signed char v46;
signed short v47;
v46 = -2 + 0;
v47 = v1 (v46);
history[history_index++] = (int)v47;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
