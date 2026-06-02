#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char);
extern unsigned short (*v2) (unsigned char, signed char);
extern unsigned short v3 (unsigned char, signed short, signed int);
extern unsigned short (*v4) (unsigned char, signed short, signed int);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern unsigned int v7 (signed int, unsigned short, signed int);
extern unsigned int (*v8) (signed int, unsigned short, signed int);
extern signed short v9 (unsigned int, signed int, signed short);
extern signed short (*v10) (unsigned int, signed int, signed short);
extern signed char v11 (signed short, signed short, unsigned char, signed int);
extern signed char (*v12) (signed short, signed short, unsigned char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
signed int v21 (signed short, signed int, signed short);
signed int (*v22) (signed short, signed int, signed short) = v21;
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned short);
extern void (*v28) (unsigned int, signed short, unsigned short);
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed short v32 = -4;
unsigned char v31 = 0;

signed int v21 (signed short v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -1;
unsigned int v38 = 1U;
signed char v37 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed short v42 = 3;
unsigned short v41 = 1;
unsigned short v40 = 5;
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
unsigned char v45;
signed char v46;
unsigned short v47;
v45 = 2 + 5;
v46 = -2 + -3;
v47 = v1 (v45, v46);
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
