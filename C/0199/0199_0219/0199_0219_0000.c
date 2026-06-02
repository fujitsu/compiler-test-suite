#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
signed int v3 (unsigned short);
signed int (*v4) (unsigned short) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (signed int, signed short, unsigned short, signed int);
extern signed char (*v8) (signed int, signed short, unsigned short, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned int, signed char);
extern unsigned short (*v12) (unsigned int, signed char);
extern signed char v13 (unsigned int, unsigned short, signed short, unsigned int);
extern signed char (*v14) (unsigned int, unsigned short, signed short, unsigned int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern signed int v17 (unsigned short, unsigned short, unsigned char);
extern signed int (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned char, signed int, signed short);
extern unsigned int (*v24) (unsigned char, signed int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int, unsigned int, unsigned int);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned short v32 = 0;
signed char v31 = -4;

signed short v29 (void)
{
{
for (;;) {
unsigned int v36 = 1U;
signed int v35 = 0;
signed short v34 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v37;
v37 = v9 ();
history[history_index++] = (int)v37;
}
break;
case 12: 
return v34;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned int v41 = 6U;
unsigned char v40 = 6;
signed short v39 = -4;
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
unsigned int v44;
v44 = 1U + 3U;
v1 (v44);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
