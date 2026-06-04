#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, signed int);
extern unsigned char (*v2) (unsigned short, unsigned char, signed int);
extern unsigned int v3 (signed short, signed int, unsigned char);
extern unsigned int (*v4) (signed short, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
signed short v9 (unsigned char);
signed short (*v10) (unsigned char) = v9;
extern signed int v11 (signed char, unsigned int);
extern signed int (*v12) (signed char, unsigned int);
extern signed short v13 (signed short, signed char, unsigned char);
extern signed short (*v14) (signed short, signed char, unsigned char);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned int v17 (signed char, unsigned char, signed short, signed int);
extern unsigned int (*v18) (signed char, unsigned char, signed short, signed int);
signed short v21 (unsigned char);
signed short (*v22) (unsigned char) = v21;
extern void v23 (signed int);
extern void (*v24) (signed int);
extern signed char v25 (signed int, signed char, signed short, unsigned short);
extern signed char (*v26) (signed int, signed char, signed short, unsigned short);
extern unsigned short v27 (unsigned char, signed short);
extern unsigned short (*v28) (unsigned char, signed short);
extern unsigned short v29 (signed char, signed short, unsigned char, unsigned short);
extern unsigned short (*v30) (signed char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned short v32 = 5;
signed short v31 = -2;

signed short v21 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 0U;
signed char v36 = -2;
signed int v35 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = -2;
unsigned char v40 = 5;
unsigned int v39 = 6U;
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
unsigned short v44;
unsigned char v45;
signed int v46;
unsigned char v47;
v44 = 7 + 1;
v45 = 3 - 3;
v46 = 3 + -4;
v47 = v1 (v44, v45, v46);
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
