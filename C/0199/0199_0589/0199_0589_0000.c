#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
extern unsigned short v3 (unsigned char, signed char);
extern unsigned short (*v4) (unsigned char, signed char);
extern signed short v5 (unsigned int, signed int, signed int);
extern signed short (*v6) (unsigned int, signed int, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (unsigned short, signed char);
extern void (*v10) (unsigned short, signed char);
extern unsigned short v11 (signed short, unsigned short);
extern unsigned short (*v12) (signed short, unsigned short);
extern signed int v13 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned char v15 (signed int, signed short);
extern unsigned char (*v16) (signed int, signed short);
extern void v17 (signed short, signed int, unsigned char, unsigned short);
extern void (*v18) (signed short, signed int, unsigned char, unsigned short);
extern signed char v19 (unsigned char, unsigned short);
extern signed char (*v20) (unsigned char, unsigned short);
unsigned char v21 (signed short, signed short, signed short, unsigned int);
unsigned char (*v22) (signed short, signed short, signed short, unsigned int) = v21;
extern unsigned int v23 (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, unsigned short, unsigned short, signed char);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed char v32 = -1;
unsigned int v31 = 4U;

unsigned short v29 (void)
{
{
for (;;) {
unsigned int v36 = 4U;
signed int v35 = 3;
signed int v34 = 3;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

unsigned char v21 (signed short v37, signed short v38, signed short v39, unsigned int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -3;
unsigned char v42 = 1;
unsigned short v41 = 1;
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
unsigned short v46;
signed short v47;
signed int v48;
v46 = 3 + 0;
v47 = 0 - -4;
v48 = v1 (v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
