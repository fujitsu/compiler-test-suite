#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned short v3 (signed short, signed short, unsigned char, signed short);
extern unsigned short (*v4) (signed short, signed short, unsigned char, signed short);
extern unsigned short v5 (unsigned char, unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned char, unsigned int, unsigned int, unsigned short);
extern void v7 (unsigned short, unsigned short);
extern void (*v8) (unsigned short, unsigned short);
extern unsigned char v9 (signed int, signed short);
extern unsigned char (*v10) (signed int, signed short);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (unsigned int, signed short, signed char, unsigned int);
extern unsigned int (*v16) (unsigned int, signed short, signed char, unsigned int);
extern unsigned short v17 (signed char, signed char, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern unsigned int v21 (signed int, signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed int, signed char, signed int, unsigned short);
unsigned short v23 (signed short, signed int, unsigned char, unsigned char);
unsigned short (*v24) (signed short, signed int, unsigned char, unsigned char) = v23;
extern unsigned short v25 (unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (unsigned char, signed int, unsigned short);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned short v29 (signed int, unsigned char);
extern unsigned short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 2;
unsigned char v31 = 6;

unsigned short v23 (signed short v34, signed int v35, unsigned char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 2;
unsigned int v39 = 2U;
signed int v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned short v43 = 1;
signed int v42 = -4;
signed int v41 = -2;
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
unsigned int v47;
v46 = 3 + 1;
v47 = v1 (v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
