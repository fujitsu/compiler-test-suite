#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed int v3 (signed int);
signed int (*v4) (signed int) = v3;
unsigned short v5 (unsigned int, unsigned int, unsigned short);
unsigned short (*v6) (unsigned int, unsigned int, unsigned short) = v5;
extern void v7 (signed int, unsigned char);
extern void (*v8) (signed int, unsigned char);
extern signed int v9 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned short, signed char, unsigned int);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned int v13 (unsigned char, signed short, unsigned short);
extern unsigned int (*v14) (unsigned char, signed short, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v17 (unsigned short, signed short);
extern signed int (*v18) (unsigned short, signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed char v21 (signed short, unsigned char, signed char, unsigned char);
extern signed char (*v22) (signed short, unsigned char, signed char, unsigned char);
extern unsigned int v25 (signed short, unsigned int, signed int, unsigned short);
extern unsigned int (*v26) (signed short, unsigned int, signed int, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned int v32 = 3U;
unsigned short v31 = 1;

unsigned short v5 (unsigned int v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
signed short v38 = 1;
signed int v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 7U;
signed short v42 = -1;
unsigned int v41 = 5U;
trace++;
switch (trace)
{
case 1: 
return v40;
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
v46 = v1 ();
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
