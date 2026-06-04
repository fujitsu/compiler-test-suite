#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, unsigned int, unsigned int);
extern signed char (*v2) (signed char, unsigned int, unsigned int);
signed char v3 (signed char);
signed char (*v4) (signed char) = v3;
extern unsigned char v5 (signed int, unsigned int, unsigned int, signed int);
extern unsigned char (*v6) (signed int, unsigned int, unsigned int, signed int);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned int v9 (unsigned short, unsigned char);
extern unsigned int (*v10) (unsigned short, unsigned char);
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
extern signed int v17 (unsigned int, signed char, unsigned short);
extern signed int (*v18) (unsigned int, signed char, unsigned short);
extern unsigned char v19 (signed short, unsigned int, signed short);
extern unsigned char (*v20) (signed short, unsigned int, signed short);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern signed short v29 (unsigned short, signed short);
extern signed short (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned int v32 = 1U;
unsigned int v31 = 5U;

signed char v7 (void)
{
{
for (;;) {
unsigned char v36 = 2;
signed short v35 = -4;
signed int v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 5U;
unsigned int v39 = 3U;
signed char v38 = 1;
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
signed char v43;
unsigned int v44;
unsigned int v45;
signed char v46;
v43 = 1 - 2;
v44 = v32 + v31;
v45 = v32 + 6U;
v46 = v1 (v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
