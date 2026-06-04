#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, unsigned char, unsigned int);
extern signed char (*v2) (signed char, unsigned char, unsigned int);
extern signed short v3 (unsigned int);
extern signed short (*v4) (unsigned int);
extern unsigned int v5 (signed short, unsigned short);
extern unsigned int (*v6) (signed short, unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (unsigned int, signed short);
extern unsigned short (*v12) (unsigned int, signed short);
extern signed int v13 (signed short, unsigned int, signed short, unsigned char);
extern signed int (*v14) (signed short, unsigned int, signed short, unsigned char);
extern unsigned int v15 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned short, unsigned int, unsigned int);
unsigned int v19 (unsigned char, unsigned int);
unsigned int (*v20) (unsigned char, unsigned int) = v19;
extern signed char v21 (unsigned int, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, unsigned char);
extern void v23 (unsigned int, signed int);
extern void (*v24) (unsigned int, signed int);
extern signed short v25 (signed short, unsigned char, signed int, signed char);
extern signed short (*v26) (signed short, unsigned char, signed int, signed char);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned short);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed short v32 = 1;
unsigned char v31 = 5;

signed short v29 (void)
{
{
for (;;) {
unsigned int v36 = 5U;
signed char v35 = -4;
signed char v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v37, unsigned int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = 3;
signed short v40 = 1;
unsigned char v39 = 0;
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
signed char v44;
unsigned char v45;
unsigned int v46;
signed char v47;
v44 = -1 + -2;
v45 = 0 + 7;
v46 = 3U - 3U;
v47 = v1 (v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
