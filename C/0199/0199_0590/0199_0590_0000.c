#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
unsigned short v3 (unsigned int, signed char);
unsigned short (*v4) (unsigned int, signed char) = v3;
extern unsigned int v5 (signed int, unsigned int, signed int, unsigned short);
extern unsigned int (*v6) (signed int, unsigned int, signed int, unsigned short);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern void v9 (signed short, signed short, signed char, signed int);
extern void (*v10) (signed short, signed short, signed char, signed int);
extern signed char v11 (unsigned int, unsigned int, signed char);
extern signed char (*v12) (unsigned int, unsigned int, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v15 (signed int, signed char);
extern unsigned char (*v16) (signed int, signed char);
signed char v17 (signed char, unsigned short);
signed char (*v18) (signed char, unsigned short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed int, signed short);
extern signed short (*v22) (signed int, signed short);
extern unsigned char v23 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v24) (signed char, unsigned int, unsigned short, signed short);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed int, signed short, signed char, unsigned int);
extern signed short (*v28) (signed int, signed short, signed char, unsigned int);
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned int v32 = 5U;
unsigned char v31 = 7;

signed char v17 (signed char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 6;
signed char v37 = -1;
signed char v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v39, signed char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = 2;
unsigned char v42 = 6;
unsigned char v41 = 6;
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
v46 = 1 - v33;
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
