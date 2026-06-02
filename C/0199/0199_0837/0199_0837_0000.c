#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern void v5 (unsigned int, signed short, signed short, unsigned short);
extern void (*v6) (unsigned int, signed short, signed short, unsigned short);
extern unsigned int v7 (unsigned short, signed int);
extern unsigned int (*v8) (unsigned short, signed int);
extern signed short v9 (unsigned int, unsigned int, unsigned char, signed short);
extern signed short (*v10) (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned int v11 (unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int);
extern signed short v13 (signed int, unsigned int, signed char, unsigned short);
extern signed short (*v14) (signed int, unsigned int, signed char, unsigned short);
extern signed short v15 (signed short, signed int, unsigned int, signed short);
extern signed short (*v16) (signed short, signed int, unsigned int, signed short);
extern unsigned char v17 (unsigned short, signed int, unsigned short, signed short);
extern unsigned char (*v18) (unsigned short, signed int, unsigned short, signed short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned int v21 (signed short, unsigned char);
unsigned int (*v22) (signed short, unsigned char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned char v25 (unsigned short, signed char, unsigned char);
unsigned char (*v26) (unsigned short, signed char, unsigned char) = v25;
extern unsigned char v27 (unsigned int, signed short, signed short, unsigned int);
extern unsigned char (*v28) (unsigned int, signed short, signed short, unsigned int);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned short v32 = 7;
unsigned int v31 = 6U;

signed char v29 (void)
{
{
for (;;) {
unsigned short v36 = 5;
signed int v35 = 3;
signed short v34 = -2;
trace++;
switch (trace)
{
case 1: 
return 1;
case 7: 
return 2;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned short v37, signed char v38, unsigned char v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 4;
unsigned char v41 = 5;
signed short v40 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v43, unsigned char v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 3;
unsigned int v46 = 7U;
signed int v45 = -4;
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
unsigned short v50;
signed short v51;
v50 = v32 + 3;
v51 = v1 (v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
