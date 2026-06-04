#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (signed char, signed int, signed int);
extern unsigned short (*v4) (signed char, signed int, signed int);
extern unsigned char v5 (signed int, unsigned short, signed int);
extern unsigned char (*v6) (signed int, unsigned short, signed int);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern void v17 (signed int, unsigned int, signed char);
extern void (*v18) (signed int, unsigned int, signed char);
extern signed short v19 (signed int, unsigned int);
extern signed short (*v20) (signed int, unsigned int);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
signed char v23 (unsigned char);
signed char (*v24) (unsigned char) = v23;
extern signed int v25 (unsigned char, unsigned char, signed char);
extern signed int (*v26) (unsigned char, unsigned char, signed char);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed short v29 (signed char, signed char, unsigned int);
extern signed short (*v30) (signed char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
signed char v32 = -1;
unsigned int v31 = 7U;

signed short v27 (void)
{
{
for (;;) {
signed short v36 = -3;
signed char v35 = -3;
unsigned char v34 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -4;
signed int v39 = -3;
signed char v38 = -3;
trace++;
switch (trace)
{
case 2: 
return -1;
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed char v43 = -4;
unsigned char v42 = 6;
signed char v41 = 2;
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
unsigned int v46;
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
