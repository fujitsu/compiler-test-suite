#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (signed short, unsigned int, unsigned char, signed short);
extern void (*v4) (signed short, unsigned int, unsigned char, signed short);
void v5 (unsigned short, signed short, signed int);
void (*v6) (unsigned short, signed short, signed int) = v5;
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern signed char v9 (signed char, signed char, unsigned short, signed char);
extern signed char (*v10) (signed char, signed char, unsigned short, signed char);
extern signed char v11 (unsigned short, signed short, unsigned char);
extern signed char (*v12) (unsigned short, signed short, unsigned char);
extern unsigned short v13 (unsigned short, signed int);
extern unsigned short (*v14) (unsigned short, signed int);
extern unsigned int v15 (signed int, signed int, unsigned char);
extern unsigned int (*v16) (signed int, signed int, unsigned char);
signed short v17 (signed short);
signed short (*v18) (signed short) = v17;
extern unsigned short v19 (unsigned int, unsigned short, signed char);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char);
extern unsigned char v21 (unsigned int);
extern unsigned char (*v22) (unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed int v32 = 0;
unsigned short v31 = 7;

signed short v17 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 2;
unsigned short v36 = 4;
signed short v35 = -4;
trace++;
switch (trace)
{
case 1: 
{
v25 ();
}
break;
case 3: 
{
v25 ();
}
break;
case 5: 
return v35;
default: abort ();
}
}
}
}

void v5 (unsigned short v38, signed short v39, signed int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 7U;
signed int v42 = -2;
signed int v41 = 3;
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
