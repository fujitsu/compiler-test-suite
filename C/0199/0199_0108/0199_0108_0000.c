#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned short v3 (signed char, signed char, signed short);
extern unsigned short (*v4) (signed char, signed char, signed short);
extern signed char v5 (signed short, unsigned char);
extern signed char (*v6) (signed short, unsigned char);
extern signed int v7 (signed int, unsigned int, signed int);
extern signed int (*v8) (signed int, unsigned int, signed int);
unsigned short v9 (signed short, unsigned short, unsigned short, unsigned int);
unsigned short (*v10) (signed short, unsigned short, unsigned short, unsigned int) = v9;
extern signed short v11 (signed char, signed short);
extern signed short (*v12) (signed char, signed short);
extern void v13 (void);
extern void (*v14) (void);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (signed char, signed short, signed int, signed int);
extern unsigned int (*v22) (signed char, signed short, signed int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (signed char, signed short, signed short);
extern unsigned char (*v26) (signed char, signed short, signed short);
extern signed short v27 (unsigned short, signed short, signed short, signed short);
extern signed short (*v28) (unsigned short, signed short, signed short, signed short);
extern signed char v29 (signed int, unsigned int, unsigned char, unsigned int);
extern signed char (*v30) (signed int, unsigned int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned char v32 = 3;
signed int v31 = 1;

unsigned short v17 (void)
{
{
for (;;) {
signed int v36 = -2;
signed int v35 = 1;
signed short v34 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v37, unsigned short v38, unsigned short v39, unsigned int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -3;
signed int v42 = -2;
signed char v41 = 1;
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
unsigned char v46;
signed char v47;
v46 = v32 + 5;
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
