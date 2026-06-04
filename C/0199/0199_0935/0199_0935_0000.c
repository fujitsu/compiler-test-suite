#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned char v7 (unsigned short, unsigned int, signed int);
extern unsigned char (*v8) (unsigned short, unsigned int, signed int);
extern void v9 (signed int, signed char, signed int, unsigned int);
extern void (*v10) (signed int, signed char, signed int, unsigned int);
signed int v11 (signed char, unsigned int, unsigned short);
signed int (*v12) (signed char, unsigned int, unsigned short) = v11;
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed short v15 (signed short, unsigned int, signed short);
extern signed short (*v16) (signed short, unsigned int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v21 (void);
extern void (*v22) (void);
extern signed short v23 (signed int, signed char, unsigned short, signed int);
extern signed short (*v24) (signed int, signed char, unsigned short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v29 (signed int, unsigned int, signed int);
extern unsigned int (*v30) (signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned short v32 = 0;
unsigned short v31 = 1;

signed int v11 (signed char v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -4;
signed short v38 = -4;
signed char v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
signed short v42 = 0;
signed short v41 = 2;
signed char v40 = -3;
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
unsigned int v46;
unsigned char v47;
v45 = 7 + 5;
v46 = 4U - 3U;
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
